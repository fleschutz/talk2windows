<#
.SYNOPSIS
	Launches Discord 
.DESCRIPTION
	This PowerShell script launches the Discord application.
#>

function TryToExec { param($Folder, $Binary)
	if (test-path "$Folder/$Binary" -pathType leaf) {
		start-process "$Folder/$Binary" -WorkingDirectory "$Folder"
		exit 0 # success 
	}
}

try {
	TryToExec "$HOME\AppData\Local\Discord\app-*" "Discord.exe"
	throw "Discord isn't installed yet."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
