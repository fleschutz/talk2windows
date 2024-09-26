<#
.SYNOPSIS
	Launches OBS Studio
.DESCRIPTION
	This PowerShell script launches the OBS Studio application.
#>

function TryLaunching { param([string]$Path, [string]$Dir)
	if (test-path "$Path" -pathType leaf) {
		start-process -FilePath "$Path" -WorkingDirectory "$Dir"
		exit 0 # success
	}
}

try {
	TryLaunching "C:\Program Files (x86)\OBS Studio\bin\64bit\obs64.exe" "C:\Program Files (x86)\OBS Studio\bin\64bit\"
	TryLaunching "C:\Program Files\OBS Studio\bin\64bit\obs64.exe" "C:\Program Files\OBS Studio\bin\64bit\"
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
