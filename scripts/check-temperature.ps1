<#
.SYNOPSIS
	Checks the temperature
.DESCRIPTION
	This PowerShell script queries the current temperature and replies by text-to-speech (TTS).
#>

try {
	$weather = (Invoke-WebRequest http://wttr.in/${Location}?format=j1 -userAgent "curl" -useBasicParsing).Content | ConvertFrom-Json
	[int]$tempNow = $weather.current_condition.temp_C
	[int]$maxTemp = -100
	[int]$timeAtMax = 0
	foreach($hourly in $weather.weather.hourly) {
		[int]$temp = $hourly.tempC
		if ($temp -gt $maxTemp) { $maxTemp = $temp; $timeAtMax = $hourly.time }
		if ($hourly.time -eq "2100") { break }
	}
	if ($tempNow -lt $maxTemp) {
		if ($timeAtMax -eq 1200) {       $Time = "12 PM"
		} elseif ($timeAtMax -eq 0) {    $Time = "12 AM"
		} elseif ($timeAtMax -lt 1200) { $Time = "$($timeAtMax / 100) AM"
		} else {                         $Time = "$(($timeAtMax - 1200) / 100) PM"
		}
		$reply = "$tempNow °C now, up to $maxTemp °C expected at $Time."
	} else {
		$reply = "$tempNow °C now."
	}
	& "$PSScriptRoot/_reply.ps1" $reply
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}