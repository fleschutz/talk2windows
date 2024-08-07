<#
.SYNOPSIS
	Locks the computer
.DESCRIPTION
	This PowerShell script immediately locks the computer desktop.
#>

try {
	rundll32.exe user32.dll,LockWorkStation
	& "$PSScriptRoot/_reply.ps1" "Locked now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
