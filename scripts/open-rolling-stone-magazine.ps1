<#
.SYNOPSIS
	Opens the RollingStone Magazine
.DESCRIPTION
	This PowerShell script launches the Web browser with the RollingStone magazine website.
.EXAMPLE
	PS> ./open-rolling-stone-magazine
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.rollingstone.com/"
exit 0 # success
