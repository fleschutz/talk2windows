<#
.SYNOPSIS
	Play Catan Universe
.DESCRIPTION
	This PowerShell script launches the Web browser with the Catan Universe browser game.
#>

& "$PSScriptRoot/open-browser.ps1" "https://catanuniverse.de/en/game/"
exit 0 # success
