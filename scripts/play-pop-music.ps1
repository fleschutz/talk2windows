<#
.SYNOPSIS
	Plays pop music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays pop music.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/Nick_Radio"
