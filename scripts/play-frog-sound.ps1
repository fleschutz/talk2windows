<#
.SYNOPSIS
	Plays a frog sound
.DESCRIPTION
	This PowerShell script plays a frog sound.
.EXAMPLE
	PS> ./play-frog-sound
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_play-sound.ps1" "$PSScriptRoot/../data/sounds/frog.mp3"
exit 0 # success
