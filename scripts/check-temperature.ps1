<#
.SYNOPSIS
	Checks the Temperature
.DESCRIPTION
	Queries the current temperature and replies by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-temperature
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	$Location = "" # empty means determine automatically
	$Weather = (Invoke-WebRequest http://wttr.in/${Location}?format=j1 -userAgent "curl" -useBasicParsing).Content | ConvertFrom-Json
	[int]$CurTemp = $Weather.current_condition.temp_C
	[int]$MaxTemp = -100
	[int]$MaxTime = 0
	foreach($Hourly in $Weather.weather.hourly) {
		[int]$Temp = $Hourly.tempC
		if ($Temp -gt $MaxTemp) { $MaxTemp = $Temp; $MaxTime = $Hourly.time }
		if ($Hourly.time -eq "2100") { break }
	}
	if ($CurTemp -eq $MaxTemp) {
		$Reply = "$CurTemp °C outside."
	} else {
		if ($MaxTime -lt 1200) { $Time = "$($MaxTime / 100) AM" } else { $Time = "$(($MaxTime - 1200) / 100) PM" }
		$Reply = "$CurTemp °C outside, up to $MaxTemp °C expected at $Time."
	}
	& "$PSScriptRoot/_reply.ps1" $Reply
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}