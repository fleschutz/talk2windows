<#
.SYNOPSIS
	Shows Mexico city in Google Maps 
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps at Mexico city (Mexico).
.EXAMPLE
	PS> ./show-mexico-city
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/place/Mexico+City"
exit 0 # success
