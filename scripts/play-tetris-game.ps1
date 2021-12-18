<#
.SYNOPSIS
	Plays the Tetris game
.DESCRIPTION
	This PowerShell script launches the Web browser with the Tetris game.
.EXAMPLE
	PS> ./play-tetris-game
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.goodoldtetris.com/"
exit 0 # success
