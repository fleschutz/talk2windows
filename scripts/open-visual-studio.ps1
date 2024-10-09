<#
.SYNOPSIS
	Launches the Visual Studio app
.DESCRIPTION
	This PowerShell script launches the Microsoft Visual Studio application.
#>

function TryToLaunch { param($path)
	if (-not(Test-Path "$path" -pathType leaf)) { return }
	Start-Process "$Path"
	exit 0 # success
}

try {
	& "$PSScriptRoot/say.ps1" "Hold on."
	TryToLaunch "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\IDE\devenv.exe"
	TryToLaunch "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\IDE\devenv.exe"
	TryToLaunch "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe"
	TryToLaunch "C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\devenv.exe"
	TryToLaunch "C:\Program Files (x86)\Microsoft Visual Studio 11.0\Common7\IDE\devenv.exe"
	TryToLaunch "C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\IDE\devenv.exe"
	throw "It seems Visual Studio is not installed."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
