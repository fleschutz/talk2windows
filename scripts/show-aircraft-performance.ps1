<#
.SYNOPSIS
	Shows the Aircraft Performance Database
.DESCRIPTION
	This PowerShell script launches the Web browser with the Aircraft Performance Database.
.EXAMPLE
	PS> ./show-aircraft-performance
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://contentzone.eurocontrol.int/aircraftperformance/details.aspx?ICAO=A320"
exit 0 # success
