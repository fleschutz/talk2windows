<#
.SYNOPSIS
	Checks the wind conditions
.DESCRIPTION
	Queries the current wind conditions and replies by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-the-wind
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

function GetWindDescription { param([string]$Location)
	$Weather = (Invoke-WebRequest http://wttr.in/${Location}?format=j1 -userAgent "curl" -useBasicParsing).Content | ConvertFrom-Json
	$Clouds = $Weather.current_condition.cloudcover
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
	if ($WindSpeed -eq 0) { return "It's windless with $($Clouds)% clouds." }
	if ($WindSpeed -lt 2) {          $Beaufort = "Calm wind"
	} elseif ($WindSpeed -le 5) {   $Beaufort = "Light air" 
	} elseif ($WindSpeed -le 11) {  $Beaufort = "Light breeze"
	} elseif ($WindSpeed -le 19) {  $Beaufort = "Gentle breeze"
	} elseif ($WindSpeed -le 28) {  $Beaufort = "Moderate breeze"
	} elseif ($WindSpeed -le 38) {  $Beaufort = "Fresh breeze"
	} elseif ($WindSpeed -le 49) {  $Beaufort = "Strong breeze"
	} elseif ($WindSpeed -le 61) {  $Beaufort = "High wind"
	} elseif ($WindSpeed -le 74) {  $Beaufort = "Fresh gale"
	} elseif ($WindSpeed -le 88) {  $Beaufort = "Strong gale"
	} elseif ($WindSpeed -le 102) { $Beaufort = "Storm"
	} elseif ($WindSpeed -le 117) { $Beaufort = "Violent storm"
	} else {                         $Beaufort = "Hurricane-force"
	}
	return "$Beaufort at $WindSpeed km/h from $WindDir with $($Clouds)% clouds."
}

try {
	$Reply = GetWindDescription "" # empty means determine automatically
	& "$PSScriptRoot/say.ps1" $Reply
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
