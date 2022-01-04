<#
.SYNOPSIS
	Opens the BBC website
.DESCRIPTION
	This PowerShell script launches the Web browser with the BBC website.
.EXAMPLE
	PS> ./open-bbc-website
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.bbc.com"
exit 0 # success
