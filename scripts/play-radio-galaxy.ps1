<#
.SYNOPSIS
	Plays radio Galaxy
.DESCRIPTION
	This PowerShell script launches the Web browser and plays radio Galaxy.
#>

& "$PSScriptRoot/say.ps1" "Oh yeah!"
& "$PSScriptRoot/open-browser.ps1" "https://streema.com/radios/play/Radio_Galaxy_Allgau"
exit 0 # success
