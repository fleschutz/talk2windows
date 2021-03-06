<#
.SYNOPSIS
	Show Barcelona city in Google Maps 
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps at Barcelona city (Spain).
.EXAMPLE
	PS> ./show-barcelona-city
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/place/Barcelona"
exit 0 # success
