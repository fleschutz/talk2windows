<#
.SYNOPSIS
	Shows the Aircraft Performance Database
.DESCRIPTION
	This PowerShell script launches the Web browser with the Aircraft Performance Database.
#>

& "$PSScriptRoot/open-browser.ps1" "https://contentzone.eurocontrol.int/aircraftperformance/details.aspx?ICAO=A320"
