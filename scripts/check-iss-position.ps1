<#
.SYNOPSIS
	Checks the ISS position
.DESCRIPTION
	This PowerShell script queries the position of the International Space Station (ISS) and replies by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-iss-position
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$ISS = (Invoke-WebRequest "http://api.open-notify.org/iss-now.json" -userAgent "curl" -useBasicParsing).Content | ConvertFrom-Json

	& "$PSScriptRoot/_reply.ps1" "The International Space Station is currently at $($ISS.iss_position.longitude)° longitude and $($ISS.iss_position.latitude)° latitude."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
