<#
.SYNOPSIS
	Plays a donkey sound
.DESCRIPTION
	This script plays a donkey sound.
.EXAMPLE
	PS> ./play-donkey-sound
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/play-mp3.ps1" "$PSScriptRoot/../data/sounds/donkey.mp3"
exit 0 # success
