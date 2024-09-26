<#
.SYNOPSIS
	Reboots the computer
.DESCRIPTION
	This PowerShell script reboots the computer immediately.
#>

try {
	& "$PSScriptRoot/say.ps1" "Okay."
	& shutdown.exe -r
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
