<#
.SYNOPSIS
	Show Moscow city in Google Maps 
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps at Moscow city (Russia).
.EXAMPLE
	PS> ./show-moscow-city
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/place/Moscow"
exit 0 # success
