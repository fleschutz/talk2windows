<#
.SYNOPSIS
	Shows Sydney city in Google Maps 
.DESCRIPTION
	This script launches the Web browser with Google Maps at Sydney city (Australia).
.EXAMPLE
	PS> ./show-sydney-city
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_launch-browser.ps1" "https://www.google.com/maps/place/Sydney"
exit 0 # success
