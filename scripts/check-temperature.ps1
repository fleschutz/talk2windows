<#
.SYNOPSIS
	Checks the temperature
.DESCRIPTION
	Queries the current temperature and replies by text-to-speech (TTS).
.PARAMETER location
	Specifies the location to use (determined automatically per default)
.EXAMPLE
	PS> ./check-temperature
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$location = "") # empty means determine automatically

try {
	$Weather = (Invoke-WebRequest http://wttr.in/${location}?format=j1 -userAgent "curl" -useBasicParsing).Content | ConvertFrom-Json
	$Temp = $Weather.current_condition.temp_C
	
	& "$PSScriptRoot/_reply.ps1" "$($Temp)°C outside."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
