<#
.SYNOPSIS
	Closes Jellyfin
.DESCRIPTION
	This PowerShell script closes the Jellyfin media player application gracefully.
#>

& "$PSScriptRoot/say.ps1" "Okay."
Stop-Process -name "JellyfinMediaPlayer"
