<#
.SYNOPSIS
	Launches Dopamine 
.DESCRIPTION
	This PowerShell script launches the audio player Dopamine.
#>

function TryToExec { param($folder, $binary)
	if (Test-Path "$folder/$binary" -pathType leaf) {
		Start-Process "$folder/$binary" -WorkingDirectory "$folder"
		return $true
	}
	return $false
}

try {
	if (TryToExec "C:\Program Files (x86)\Dopamine" "Dopamine.exe") {
		$reply = "Here's Dopamine."
	} else {
		$reply = "Sorry, Dopamine isn't installed yet."
	}
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
