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
	TryToExec "C:\Program Files\VideoLAN\VLC" "vlc.exe"
	throw "VLC media player isn't installed."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
