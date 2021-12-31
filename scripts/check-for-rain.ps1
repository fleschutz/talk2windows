<#
.SYNOPSIS
	Checks for rain 
.DESCRIPTION
	Queries the current weather report for rain and answers by text-to-speech (TTS).
.PARAMETER location
	Specifies the location to use (determined automatically per default)
.EXAMPLE
	PS> ./check-for-rain
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$location = "") # empty means determine automatically

function GetCategory { param([int]$precipMM)
	if ($precipMM -lt "2.5") { return "Light rain" }
	if ($precipMM -lt "7.7") { return "Moderate rain" }
	if ($precipMM -lt "50.0") { return "Heavy rain" }
	return "Violent rain"
}

try {
	$Weather = (Invoke-WebRequest http://wttr.in/${location}?format=j1 -userAgent "curl" -useBasicParsing).Content | ConvertFrom-Json
	$Temp = $Weather.current_condition.temp_C
	$Precip = $Weather.current_condition.precipMM
	
	if ($Precip -eq "0.0") {
		$Day = "today"
		foreach ($Hourly in $Weather.weather.hourly) {
			if ($Hourly.precipMM -ne "0.0") {
				$Rain = GetCategory $Hourly.precipMM 
				& "$PSScriptRoot/_reply.ps1" "$Rain expected $Day at $($Hourly.time / 100) o'clock with $($Hourly.precipMM) millimeters per hour."
				exit 0 # success
			}
			if ($Hourly.time -eq "2100") { if ($Day -eq "today") { $Day = "tomorrow" } else { $Day = "day after tomorrow" } }
		}
		$Reply = "No rain expected in the next 48 hours."
	} else {
		$Day = "today"
		foreach ($Hourly in $Weather.weather.hourly) {
			if ($Hourly.precipMM -eq "0.0") { 
				$Rain = GetCategory $Precip
				& "$PSScriptRoot/_reply.ps1" "$Rain with $($Precip) millimeters per hour expected to stop $Day at $($Hourly.time / 100) o'clock."
				exit 0 # success
			}
			if ($Hourly.time -eq "2100") { if ($Day -eq "today") { $Day = "tomorrow" } else { $Day = "day after tomorrow" } }
		}
		$Reply = "Current rain with $($Precip) millimeters per hour not expected to stop in the next 48 hours."
	}
	& "$PSScriptRoot/_reply.ps1" "$Reply"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
