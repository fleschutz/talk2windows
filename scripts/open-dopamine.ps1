<#
.SYNOPSIS
	Launches Dopamine 
.DESCRIPTION
	This PowerShell script launches the audio player Dopamine.
#>

function TryToExec { param($Folder, $Binary)
	if (test-path "$Folder/$Binary" -pathType leaf) {
		start-process "$Folder/$Binary" -WorkingDirectory "$Folder"
				exit 0 # success 		exit 0 # success
	}
}

try {
	TryToExec "C:\Program Files (x86)\Dopamine" "Dopamine.exe"
	throw "Dopamine isn't installed."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
