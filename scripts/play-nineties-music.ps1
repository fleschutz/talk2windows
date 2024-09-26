<#
.SYNOPSIS
	Plays 90s music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays 90s music.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/181.fm_Star_90s"
