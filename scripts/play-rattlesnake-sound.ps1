<#
.SYNOPSIS
	Plays a rattlesnake sound
.DESCRIPTION
	This PowerShell script plays a rattlesnake sound.
.EXAMPLE
	PS> ./play-rattlesnake-sound
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_play-sound.ps1" "$PSScriptRoot/../data/sounds/rattlesnake.mp3"
exit 0 # success
