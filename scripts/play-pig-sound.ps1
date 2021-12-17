<#
.SYNOPSIS
	Plays a pig sound
.DESCRIPTION
	This script plays a pig sound.
.EXAMPLE
	PS> ./play-pig-sound
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/play-mp3.ps1" "$PSScriptRoot/../data/sounds/pig.mp3"
exit 0 # success
