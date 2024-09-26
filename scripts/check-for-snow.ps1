<#
.SYNOPSIS
	Checks for snow
.DESCRIPTION
	This PowerShell script queries the current weather report for snow and answers by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-for-snow.ps1
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

param([string]$location = "") # empty means determine automatically

function GetSnowCategory { param([float]$VisibKM)
	if ($VisibKM -gt "1.0") { return "Light snow" }
	if ($VisibKM -gt "0.5") { return "Moderate snow" }
	return "Heavy snow"
}

try {
	$Weather = (Invoke-WebRequest http://wttr.in/${location}?format=j1 -userAgent "curl" -useBasicParsing).Content | ConvertFrom-Json
	$Temp = $Weather.current_condition.temp_C
	$Precip = $Weather.current_condition.precipMM
	
	if (($Precip -ne "0.0") -and ($Temp -lt "0.0")) {
		$Reply = "It's currently snowing with $($Precip) millimeters per hour."
	} else {
		$Day = "today"
		$Reply = "No snow expected in the next 48 hours."
		foreach ($Hourly in $Weather.weather.hourly) {
			if (($Hourly.precipMM -ne "0.0") -and ($Hourly.tempC -lt "0.0")) {
				$Snow = GetSnowCategory $Hourly.visibility 
				$Reply = "$Snow expected $Day at $($Hourly.time / 100) o'clock with $($Hourly.precipMM) millimeters per hour."
				break
			}
			if ($Hourly.time -eq "2100") { if ($Day -eq "today") { $Day = "tomorrow" } else { $Day = "day after tomorrow" } }
		}
	}
	& "$PSScriptRoot/say.ps1" $Reply
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
