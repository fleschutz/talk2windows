<#
.SYNOPSIS
	Plays Relax Music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays Relax music.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/Relaxation_Island"
