<#
.SYNOPSIS
	Opens Google Flights
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Flights
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/travel/flights"
