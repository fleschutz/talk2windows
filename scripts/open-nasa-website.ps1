<#
.SYNOPSIS
	Opens the NASA website
.DESCRIPTION
	This PowerShell script launches the Web browser with the NASA website.
.EXAMPLE
	PS> ./open-nasa-website
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.nasa.gov"
exit 0 # success
