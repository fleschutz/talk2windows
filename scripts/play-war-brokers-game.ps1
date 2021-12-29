<#
.SYNOPSIS
	Play War Brokers
.DESCRIPTION
	This PowerShell script launches the Web browser with the War Brokers browser game.
.EXAMPLE
	PS> ./play-war-brokers-game
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://warbrokers.io"
exit 0 # success
