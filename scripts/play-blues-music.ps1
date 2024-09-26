<#
.SYNOPSIS
	Plays blues music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays blues music.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/American_Road_Radio"
