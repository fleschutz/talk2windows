<#
.SYNOPSIS
	Plays a cow sound
.DESCRIPTION
	This PowerShell script plays a cow sound.
.EXAMPLE
	PS> ./play-cow-sound
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/play-mp3.ps1" "$PSScriptRoot/../data/sounds/cow.mp3"
exit 0 # success
