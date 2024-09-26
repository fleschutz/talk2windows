<#
.SYNOPSIS
	Launches Remote Desktop
.DESCRIPTION
	This PowerShell script launches the Remote Desktop application for a RDP session.
#>

try {
	Start-Process mstsc.exe
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
