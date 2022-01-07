<#
.SYNOPSIS
	Launches VLC
.DESCRIPTION
	This PowerShell script launches the VLC media player application.
.EXAMPLE
	PS> ./open-vlc
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

function TryToExec { param($Folder, $Binary)
	if (test-path "$Folder/$Binary" -pathType leaf) {
		start-process "$Folder/$Binary" -WorkingDirectory "$Folder"
		exit 0 # success
	}
}

try {
	TryToExec "C:\Program Files\VideoLAN\VLC" "vlc.exe"
	throw "VLC media player isn't installed."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
