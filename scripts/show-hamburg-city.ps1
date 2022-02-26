<#
.SYNOPSIS
	Show Hamburg city in Google Maps 
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps at Hamburg city (Germany).
.EXAMPLE
	PS> ./show-hamburg-city
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/place/Hamburg"
exit 0 # success
