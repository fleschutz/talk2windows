<#
.SYNOPSIS
	Launches the Spotify app
.DESCRIPTION
	This PowerShell script launches the Spotify application.
#>

& "$PSScriptRoot/say.ps1" "Hold on."
Start-Process spotify:
