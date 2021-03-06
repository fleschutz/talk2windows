<#
.SYNOPSIS
	Plays a vulture sound
.DESCRIPTION
	This PowerShell script plays a vulture sound.
.EXAMPLE
	PS> ./play-vulture-sound
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_play-sound.ps1" "$PSScriptRoot/../data/sounds/vulture.mp3"
exit 0 # success
