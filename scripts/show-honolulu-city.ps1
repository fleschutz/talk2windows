<#
.SYNOPSIS
	Show Honolulu city in Google Maps 
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps at Honolulu city (USA).
.EXAMPLE
	PS> ./show-honolulu-city
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/place/Honolulu"
exit 0 # success
