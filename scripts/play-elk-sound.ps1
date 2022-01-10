<#
.SYNOPSIS
	Plays an elk sound
.DESCRIPTION
	This PowerShell script plays an elk sound.
.EXAMPLE
	PS> ./play-elk-sound
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_play-sound.ps1" "$PSScriptRoot/../data/sounds/elk.mp3"
exit 0 # success
