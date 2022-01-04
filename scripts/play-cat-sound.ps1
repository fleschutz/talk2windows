<#
.SYNOPSIS
	Plays a cat sound
.DESCRIPTION
	This PowerShell script plays a cat sound.
.EXAMPLE
	PS> ./play-cat-sound
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/play-mp3.ps1" "$PSScriptRoot/../data/sounds/cat.mp3"
exit 0 # success
