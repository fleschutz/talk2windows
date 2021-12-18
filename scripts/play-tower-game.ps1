<#
.SYNOPSIS
	Plays the Tower game
.DESCRIPTION
	This PowerShell script launches the Web browser with the Tower game.
.EXAMPLE
	PS> ./play-tower-game
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.towergame.app/"
exit 0 # success
