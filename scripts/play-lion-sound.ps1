<#
.SYNOPSIS
	Plays a lion sound
.DESCRIPTION
	This script plays a lion sound.
.EXAMPLE
	PS> ./play-lion-sound
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/play-mp3.ps1" "$PSScriptRoot/../data/sounds/lion.mp3"
exit 0 # success
