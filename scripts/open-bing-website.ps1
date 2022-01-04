<#
.SYNOPSIS
	Opens the Bing website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Microsoft Bing website.
.EXAMPLE
	PS> ./open-bing-website
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.bing.com"
exit 0 # success
