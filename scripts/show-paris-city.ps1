<#
.SYNOPSIS
	Show Paris city
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps at Paris city (France).
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/place/Paris"
exit 0 # success
