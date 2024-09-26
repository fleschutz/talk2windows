<#
.SYNOPSIS
	Plays country music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays country music.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/HPR1_The_Classic_Country_Channel"
