<#
.SYNOPSIS
	Plays a goat sound
.DESCRIPTION
	This PowerShell script plays a goat sound.
.EXAMPLE
	PS> ./play-goat-sound
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/play-mp3.ps1" "$PSScriptRoot/../data/sounds/goat.mp3"
exit 0 # success
