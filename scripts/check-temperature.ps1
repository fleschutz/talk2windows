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
	foreach($Hourly in $Weather.weather.hourly) {
		[int]$Temp = $Hourly.tempC
		if ($Temp -gt $MaxTemp) { $MaxTemp = $Temp }
		if ($Hourly.time -eq "2100") { break }
	}
	if ($CurTemp -eq $MaxTemp) { $Reply = "$CurTemp °C outside." } else { $Reply = "$CurTemp °C outside, up to $MaxTemp °C expected today." }
	& "$PSScriptRoot/_reply.ps1" $Reply
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}