<#
.SYNOPSIS
	Show Toronto city in Google Maps 
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps at Toronto city (Canada).
.EXAMPLE
	PS> ./show-toronto-city
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/place/Toronto"
exit 0 # success
