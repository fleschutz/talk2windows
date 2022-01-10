<#
.SYNOPSIS
	Plays an Alarm Sound
.DESCRIPTION
	This PowerShell script plays an alarm sound.
.EXAMPLE
	PS> ./play-alarm-sound
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_play-sound.ps1" "$PSScriptRoot/../data/sounds/alarm.wav"
exit 0 # success
