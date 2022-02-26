<#
.SYNOPSIS
	Show Kyiv city in Google Maps 
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps at Miami city (USA).
.EXAMPLE
	PS> ./show-kyiv-city
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/place/Kyiv"
exit 0 # success
