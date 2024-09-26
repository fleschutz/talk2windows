<#
.SYNOPSIS
	Launches the Notepad app
.DESCRIPTION
	This PowerShell script launches the Notepad application.
#>

try {
	& "$PSScriptRoot/say.ps1" "Okay."
	Start-Process notepad.exe
	exit 0 
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
