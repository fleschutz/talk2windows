<#
.SYNOPSIS
	Checks the wind conditions
.DESCRIPTION
	Queries the current wind conditions and replies by text-to-speech (TTS).
.PARAMETER location
	Specifies the location to use (determined automatically per default)
.EXAMPLE
	PS> ./check-wind
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$location = "") # empty means determine automatically

try {
	$Weather = (Invoke-WebRequest http://wttr.in/${location}?format=j1 -userAgent "curl" -useBasicParsing).Content | ConvertFrom-Json
	$WindSpeed = $Weather.current_condition.windspeedKmph
	$WindDir = switch($Weather.current_condition.winddir16Point) {
	"N"   { "North" }
	"NNE" { "North North East" }
	"NE"  { "North East" }
	"ENE" { "East North East" }
	"E"   { "East" }
	"ESE" { "East South East" }
	"SE"  { "South East" }
	"SSE" { "South South East" }
	"S"   { "South" }
	"SSW" { "South South West" }
	"SW"  { "South West" }
	"WSW" { "West South West" }
	"W"   { "West" }
	"WNW" { "West North West" }
	"NW"  { "North West" }
	"NNW" { "North North West" }
	}

	if ($WindSpeed -eq 0) {
		& "$PSScriptRoot/_reply.ps1" "It's windless."
	} else {
		& "$PSScriptRoot/_reply.ps1" "$WindDir winds at $WindSpeed km/h."
	}
	exit 0 # success
} catch {
	"⚠️ Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}
