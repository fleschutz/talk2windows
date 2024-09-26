<#
.SYNOPSIS
	Tells the ISS position
.DESCRIPTION
	This PowerShell script tells the position of the International Space Station (ISS) by text-to-speech (TTS).
#>

try {
	$ISS = (Invoke-WebRequest "http://api.open-notify.org/iss-now.json" -userAgent "curl" -useBasicParsing).Content | ConvertFrom-Json

	& "$PSScriptRoot/say.ps1" "It's currently at $($ISS.iss_position.longitude)° longitude and $($ISS.iss_position.latitude)° latitude."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
