<#
.SYNOPSIS
	Plays Workout Music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays Workout music.
.EXAMPLE
	PS> ./play-workout-music.ps1
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/JAM_FM_Workout"
exit 0 # success
