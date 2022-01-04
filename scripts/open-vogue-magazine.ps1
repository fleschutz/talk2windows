<#
.SYNOPSIS
	Opens the Vogue Magazine
.DESCRIPTION
	This PowerShell script launches the Web browser with the Vogue Magazine website.
.EXAMPLE
	PS> ./open-vogue-magazine
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.vogue.com"
exit 0 # success
