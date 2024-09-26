<#
.SYNOPSIS
	Replies to "How's the weather?"
.DESCRIPTION
	Queries the current weather report and tells it by text-to-speech (TTS).
#>

param([string]$location = "") # empty means determine automatically

try {
	$Weather = (Invoke-WebRequest http://wttr.in/${location}?format=j1 -userAgent "curl" -useBasicParsing).Content | ConvertFrom-Json

	$tempC = $Weather.current_condition.temp_C
	$Precip = $Weather.current_condition.precipMM
	$Humidity = $Weather.current_condition.humidity
	$WindSpeed = $Weather.current_condition.windspeedKmph
	$WindDir = $Weather.current_condition.winddir16Point
	$Clouds = $Weather.current_condition.cloudcover
	$Visib = $Weather.current_condition.visibility

	& "$PSScriptRoot/say.ps1" "We have $tempC degrees celsius, $($Precip)mm rain, $($Humidity)% humidity, $($WindSpeed)km/h wind from $WindDir with $($Clouds)% clouds and $($Visib)km visibility."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
