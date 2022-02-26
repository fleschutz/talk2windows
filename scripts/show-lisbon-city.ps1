<#
.SYNOPSIS
	Show Lisbon city in Google Maps 
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps at Lisbon city (Portugal).
.EXAMPLE
	PS> ./show-lisbon-city
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/place/Lisbon"
exit 0 # success
