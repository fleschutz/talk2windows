<#
.SYNOPSIS
	Plays House Music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays house music.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/NYC_House_Radio"
