<#
.SYNOPSIS
	Plays a dog sound
.DESCRIPTION
	This PowerShell script plays a dog sound.
.EXAMPLE
	PS> ./play-dog-sound
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_play-sound.ps1" "$PSScriptRoot/../data/sounds/dog.mp3"
exit 0 # success
