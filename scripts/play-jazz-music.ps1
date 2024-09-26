<#
.SYNOPSIS
	Plays jazz music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays jazz music.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/KLEB"
