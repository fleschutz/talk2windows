<#
.SYNOPSIS
	Plays Workout Music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays Workout music.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/JAM_FM_Workout"
