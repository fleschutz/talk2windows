<#
.SYNOPSIS
	Plays a car sound
.DESCRIPTION
	This PowerShell script plays a car sound.
.EXAMPLE
	PS> ./play-car-sound
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_play-sound.ps1" "$PSScriptRoot/../data/sounds/car.wav"
exit 0 # success
