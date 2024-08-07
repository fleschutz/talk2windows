<#
.SYNOPSIS
	Plays the Santa Tracker game
.DESCRIPTION
	This PowerShell script launches the Web browser with the Santa Tracker game.
.EXAMPLE
	PS> ./play-santa-tracker-game
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://santatracker.google.com"
exit 0 # success
