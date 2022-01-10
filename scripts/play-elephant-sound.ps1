<#
.SYNOPSIS
	Plays a elephant sound
.DESCRIPTION
	This PowerShell script plays a elephant sound.
.EXAMPLE
	PS> ./play-elephant-sound
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_play-sound.ps1" "$PSScriptRoot/../data/sounds/elephant.mp3"
exit 0 # success
