<#
.SYNOPSIS
	Launches VLC
.DESCRIPTION
	This PowerShell script launches the VLC media player application.
#>

function TryToExec { param($Folder, $Binary)
	if (Test-Path "$Folder/$Binary" -pathType leaf) {
		Start-Process "$Folder/$Binary" -WorkingDirectory "$Folder"
		exit 0 # success
	}
}

try {
	& "$PSScriptRoot/say.ps1" "Hold on."
	TryToExec "C:\Program Files\VideoLAN\VLC" "vlc.exe"
	throw "VLC media player isn't installed."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
