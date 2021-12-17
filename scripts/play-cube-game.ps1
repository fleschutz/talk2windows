<#
.SYNOPSIS
	Plays the Cube game
.DESCRIPTION
	This script launches the Web browser with the Cube game.
.EXAMPLE
	PS> ./play-cube-game
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_launch-browser.ps1" "https://bsehovac.github.io/the-cube/"
exit 0 # success
