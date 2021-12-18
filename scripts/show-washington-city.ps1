<#
.SYNOPSIS
	Shows Washington city in Google Maps 
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps at Washington city (USA).
.EXAMPLE
	PS> ./show-washington-city
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/place/Washington"
exit 0 # success
