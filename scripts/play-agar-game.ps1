<#
.SYNOPSIS
	Play Agar.io
.DESCRIPTION
	This PowerShell script launches the Web browser with the Agar.io browser game.
.EXAMPLE
	PS> ./play-agar-game
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://agar.io"
exit 0 # success
