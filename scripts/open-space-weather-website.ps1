<#
.SYNOPSIS
	Opens the Space Weather website 
.DESCRIPTION
	This PowerShell script launches the Web browser with the Space Weather website.
.EXAMPLE
	PS> ./open-space-weather-website
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.spaceweather.com"
exit 0 # success
