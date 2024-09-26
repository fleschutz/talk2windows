<#
.SYNOPSIS
	Launches the Visual Studio app
.DESCRIPTION
	This PowerShell script launches the Microsoft Visual Studio application.
#>

function TryLaunching { param($Path)
	if (test-path "$Path" -pathType leaf) {
		start-process "$Path"
		exit 0 # success
	}
}

try {
	TryLaunching "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\IDE\devenv.exe"
	TryLaunching "C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\devenv.exe"
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
