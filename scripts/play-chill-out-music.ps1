<#
.SYNOPSIS
	Plays chillout music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays chillout music.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/202.FM_The_ChillOut_Lounge"
