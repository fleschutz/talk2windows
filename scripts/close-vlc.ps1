<#
.SYNOPSIS
	Closes the VLC media player application
.DESCRIPTION
	This PowerShell script closes the VLC media player application gracefully.
#>

& "$PSScriptRoot/say.ps1" "Okay."
Stop-Process -name "vlc"
