<#
.SYNOPSIS
	Shows a city in Google Maps 
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps at the given city.
#>

param([string]$city)
& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/place/$city"
& "$PSScriptRoot/say.ps1" "Here's $city."
