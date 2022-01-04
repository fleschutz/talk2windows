<#
.SYNOPSIS
	Play Catan Universe
.DESCRIPTION
	This PowerShell script launches the Web browser with the Catan Universe browser game.
.EXAMPLE
	PS> ./play-catan-universe-game
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://catanuniverse.de/en/game/"
exit 0 # success
