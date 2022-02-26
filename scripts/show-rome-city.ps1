<#
.SYNOPSIS
	Show Rome city in Google Maps 
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps at Rome city  (Italy).
.EXAMPLE
	PS> ./show-rome-city
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/place/Rome"
exit 0 # success
