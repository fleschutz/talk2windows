<#
.SYNOPSIS
	Plays the ISS Docking Simulator game
.DESCRIPTION
	This PowerShell script launches the Web browser with the ISS Docking Simulator game.
.EXAMPLE
	PS> ./play-iss-docking-simulator-game
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://iss-sim.spacex.com"
exit 0 # success
