<#
.SYNOPSIS
	Plays a wolf sound
.DESCRIPTION
	This script plays a wolf sound.
.EXAMPLE
	PS> ./play-wolf-sound
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/play-mp3.ps1" "$PSScriptRoot/../data/sounds/wolf.mp3"
exit 0 # success
