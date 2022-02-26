<#
.SYNOPSIS
	Show San Francisco city in Google Maps 
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps at San Francisco city (USA).
.EXAMPLE
	PS> ./show-san-francisco-city
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/place/San+Francisco"
exit 0 # success
