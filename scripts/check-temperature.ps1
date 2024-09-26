<#
.SYNOPSIS
	Checks the temperature
.DESCRIPTION
	This PowerShell script queries the current temperature and replies by text-to-speech (TTS).
#>

try {
	& "$PSScriptRoot/say.ps1" "Just a second..."
	$weather = (Invoke-WebRequest http://wttr.in/${Location}?format=j1 -userAgent "curl" -useBasicParsing).Content | ConvertFrom-Json
	[int]$tempNow = $weather.current_condition.temp_C
	[int]$tempMax = -999
	[int]$tempMin = 999
	[int]$timeAtMax = 0
	foreach($hourly in $weather.weather.hourly) {
		[int]$temp = $hourly.tempC
		if ($temp -gt $tempMax) { $tempMax = $temp; $timeAtMax = $hourly.time }
		if ($temp -lt $tempMin) { $tempMin = $temp }
		if ($hourly.time -eq "2100") { break }
	}
	if ($tempNow -lt $tempMax) {
		if ($timeAtMax -eq 1200) {       $Time = "12 PM"
		} elseif ($timeAtMax -eq 0) {    $Time = "12 AM"
		} elseif ($timeAtMax -lt 1200) { $Time = "$($timeAtMax / 100) AM"
		} else {                         $Time = "$(($timeAtMax - 1200) / 100) PM"
		}
		$reply = "It's $tempNow °C now, up to $tempMax °C expected at $Time."
	} else {
		$reply = "It's $tempNow °C now, today we expect from $tempMin to $tempMax °C."
	}
	& "$PSScriptRoot/say.ps1" $reply
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
