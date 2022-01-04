<#
.SYNOPSIS
	Play Slither.io
.DESCRIPTION
	This PowerShell script launches the Web browser with the Slither.io browser game.
.EXAMPLE
	PS> ./play-slither-game
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "http://slither.io"
exit 0 # success
