<#
.SYNOPSIS
	Show Atlanta city in Google Maps 
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps at Atlanta city (USA).
.EXAMPLE
	PS> ./show-atlanta-city
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/place/Atlanta"
exit 0 # success
