<#
.SYNOPSIS
	Plays a wolf sound
.DESCRIPTION
	This PowerShell script plays a wolf sound.
.EXAMPLE
	PS> ./play-wolf-sound
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_play-sound.ps1" "$PSScriptRoot/../data/sounds/wolf.mp3"
exit 0 # success
