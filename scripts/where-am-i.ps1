<#
.SYNOPSIS
	Replies to 'where am I?' 
.DESCRIPTION
	This PowerShell script queries the current location and answers by text-to-speech (TTS).
.EXAMPLE
	PS> ./where-am-i
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$Weather = (Invoke-WebRequest http://wttr.in/?format=j1 -userAgent "curl" -useBasicParsing).Content | ConvertFrom-Json
	$Area = $Weather.nearest_area.areaName.value
	$Region = $Weather.nearest_area.region.value
	$Country = $Weather.nearest_area.country.value

	& "$PSScriptRoot/_reply.ps1" "You're near $Area in $Region ($Country)."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])."
	exit 1
}
