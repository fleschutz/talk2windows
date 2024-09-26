<#
.SYNOPSIS
	Checks for rain 
.DESCRIPTION
	Queries the current weather report for rain and answers by text-to-speech (TTS).
#>

param([string]$location = "") # empty means determine automatically

function GetCategory { param([int]$tempC, [float]$precipMM)
	if ($tempC -lt 0) {
		if ($precipMM -lt 0.2) { return "Light snow" }
		if ($precipMM -lt 0.5) { return "Moderate snow" }
		return "Heavy snow"
	} else {
		if ($precipMM -lt 2.5) { return "Light rain" }
		if ($precipMM -lt 7.7) { return "Moderate rain" }
		if ($precipMM -lt 50.0) { return "Heavy rain" }
		return "Violent rain"
	}
}

try {
	& "$PSScriptRoot/say.ps1" "Hold on..."
	$weather = (Invoke-WebRequest http://wttr.in/${location}?format=j1 -userAgent "curl" -useBasicParsing).Content | ConvertFrom-Json
	$precipMM = $weather.current_condition.precipMM
	[int]$now = Get-Date -format "HHmm"
	$day = "today"
	
	if ($precipMM -eq "0.0") {
		foreach($hourly in $weather.weather.hourly) {
			[int]$chance = $hourly.chanceofrain
			if (($day -eq "today") -and ($now -gt $hourly.time)) {
			} elseif (($chance -gt 30) -and ($hourly.precipMM -ne "0.0")) { # >30% and >0.0mm
				& "$PSScriptRoot/say.ps1" "$($hourly.weatherDesc.value) expected $day at $($hourly.time / 100) o'clock with $($hourly.precipMM) millimeters per hour."
				exit 0 # success
			}
			if ($hourly.time -eq "2100") { if ($day -eq "today") { $day = "tomorrow" } else { $day = "day after tomorrow" } }
		}
		$reply = "No rain expected in the next 48 hours."
	} else {
		$tempC = $weather.current_condition.temp_C
		foreach($hourly in $weather.weather.hourly) {
			if (($day -eq "today") -and ($now -gt $hourly.time)) {
			} elseif ($hourly.precipMM -eq "0.0") { 
				$Rain = GetCategory $tempC $Precip
				& "$PSScriptRoot/say.ps1" "$Rain with $precipMM millimeters per hour expected to stop $day at $($hourly.time / 100) o'clock."
				exit 0 # success
			}
			if ($hourly.time -eq "2100") { if ($day -eq "today") { $day = "tomorrow" } else { $day = "day after tomorrow" } }
		}
		$reply = "Current rain with $precipMM millimeters per hour not expected to stop in the next 48 hours."
	}
	& "$PSScriptRoot/say.ps1" $reply
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
