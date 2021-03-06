<#
.SYNOPSIS
	Show Madrid city in Google Maps 
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps at Madrid city (Spain).
.EXAMPLE
	PS> ./show-madrid-city
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/place/Madrid"
exit 0 # success
