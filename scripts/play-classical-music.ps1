<#
.SYNOPSIS
	Plays classical music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays classical music.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/KUSC_KDSC"
