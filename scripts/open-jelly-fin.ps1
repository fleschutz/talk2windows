<#
.SYNOPSIS
	Launches Jellyfin
.DESCRIPTION
	This PowerShell script launches the Jellyfin media player application.
#>

function TryToExec { param($Folder, $Binary)
	if (Test-Path "$Folder/$Binary" -pathType leaf) {
		Start-Process "$Folder/$Binary" -WorkingDirectory "$Folder"
		exit 0 # success
	}
}

try {
	TryToExec "C:\Program Files\Jellyfin\Jellyfin Media Player" "JellyfinMediaPlayer.exe" 
	throw "Jellyfin isn't installed yet."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
