<#
.SYNOPSIS
	Closes the Spotify app
.DESCRIPTION
	This PowerShell script closes the Spotify application gracefully.
#>

& "$PSScriptRoot/say.ps1" "Okay."
Stop-Process -name "spotify"
