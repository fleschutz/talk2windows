<#
.SYNOPSIS
	Show Berlin city in Google Maps 
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps at Berlin city (Germany).
.EXAMPLE
	PS> ./show-berlin-city
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/place/Berlin"
exit 0 # success
