<#
.SYNOPSIS
	Shows Amsterdam city in Google Maps 
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps at Amsterdam city (Netherlands).
.EXAMPLE
	PS> ./show-amsterdam-city
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/place/Amsterdam"
exit 0 # success
