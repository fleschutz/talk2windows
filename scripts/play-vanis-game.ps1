<#
.SYNOPSIS
	Play Vanis.io
.DESCRIPTION
	This PowerShell script launches the Web browser with the Vanis.io game.
.EXAMPLE
	PS> ./play-vanis-game
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://vanis.io"
exit 0 # success
