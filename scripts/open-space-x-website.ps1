<#
.SYNOPSIS
	Opens the SpaceX website
.DESCRIPTION
	This PowerShell script launches the Web browser with the SpaceX website.
.EXAMPLE
	PS> ./open-space-x-website
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.spacex.com/"
exit 0 # success
