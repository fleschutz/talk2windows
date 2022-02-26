<#
.SYNOPSIS
	Show Dublin city in Google Maps 
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps at Dublin city (Ireland).
.EXAMPLE
	PS> ./show-dublin-city
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/place/Dublin"
exit 0 # success
