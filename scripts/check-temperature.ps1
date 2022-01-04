<#
.SYNOPSIS
	Checks the Temperature
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
	[int]$CurTemp = $Weather.current_condition.temp_C
	[int]$MinTemp = 100
	[int]$MaxTemp = -100
	foreach ($Hourly in $Weather.weather.hourly) {
		[int]$Temp = $Hourly.tempC
		if ($Temp -lt $MinTemp) { $MinTemp = $Temp }
		if ($Temp -gt $MaxTemp) { $MaxTemp = $Temp }
		if ($Hourly.time -eq "2100") { break }
	}
	& "$PSScriptRoot/_reply.ps1" "$CurTemp °C outside, it ranges from $MinTemp °C to $MaxTemp °C today."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
