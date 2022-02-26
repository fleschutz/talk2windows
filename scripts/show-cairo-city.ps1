<#
.SYNOPSIS
	Show Cairo city in Google Maps 
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps at Cairo city (Egypt).
.EXAMPLE
	PS> ./show-cairo-city
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/place/Kairo"
exit 0 # success
