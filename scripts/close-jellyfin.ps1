<#
.SYNOPSIS
	Closes Jellyfin
.DESCRIPTION
	This PowerShell script closes the Jellyfin media player application gracefully.
#>

& "$PSScriptRoot/close-program.ps1" "Jellyfin media player" "JellyfinMediaPlayer" "JellyfinMediaPlayer"
exit 0 # success
