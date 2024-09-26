<#
.SYNOPSIS
	Locks the computer
.DESCRIPTION
	This PowerShell script immediately locks the computer desktop.
#>

try {
	rundll32.exe user32.dll,LockWorkStation
	& "$PSScriptRoot/say.ps1" "Locked now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
