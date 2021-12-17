<#
.SYNOPSIS
	Plays a rattlesnake sound
.DESCRIPTION
	This script plays a rattlesnake sound.
.EXAMPLE
	PS> ./play-rattlesnake-sound
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/play-mp3.ps1" "$PSScriptRoot/../data/sounds/rattlesnake.mp3"
exit 0 # success
