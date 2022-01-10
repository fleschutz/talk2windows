<#
.SYNOPSIS
	Plays the Big Ben clocks
.DESCRIPTION
	This PowerShell script plays the hourly Big Ben clock bells.
.EXAMPLE
	PS> ./play-big-ben-sound
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_play-sound.ps1" "$PSScriptRoot/../data/sounds/BigBenHourly.mp3"
exit 0 # success
