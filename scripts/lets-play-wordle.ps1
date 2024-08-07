<#
.SYNOPSIS
	Plays the Wordle game
.DESCRIPTION
	This PowerShell script launches the Web browser with the Wordle game.
.EXAMPLE
	PS> ./play-wordle-game
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.powerlanguage.co.uk/wordle/"
exit 0 # success
