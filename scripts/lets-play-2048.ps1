<#
.SYNOPSIS
	Plays the 2048 game
.DESCRIPTION
	This PowerShell script launches the Web browser with the 2048 game.
#>

& "$PSScriptRoot/open-browser.ps1" "https://2048game.com/"
exit 0 # success
