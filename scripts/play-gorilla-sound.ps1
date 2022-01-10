<#
.SYNOPSIS
	Plays a gorilla sound
.DESCRIPTION
	This PowerShell script plays a gorilla sound.
.EXAMPLE
	PS> ./play-gorilla-sound
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_play-sound.ps1" "$PSScriptRoot/../data/sounds/gorilla.mp3"
exit 0 # success
