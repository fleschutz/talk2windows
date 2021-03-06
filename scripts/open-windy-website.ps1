<#
.SYNOPSIS
	Opens the windy.com website
.DESCRIPTION
	This PowerShell script launches the Web browser with the windy.com website.
.EXAMPLE
	PS> ./open-windy-website
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.windy.com"
exit 0 # success
