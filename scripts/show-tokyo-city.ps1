<#
.SYNOPSIS
	Shows Tokyo city in Google Maps 
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps at Tokyo city (Japan).
.EXAMPLE
	PS> ./show-tokyo-city
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/place/Tokyo"
exit 0 # success
