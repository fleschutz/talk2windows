<#
.SYNOPSIS
	Launch Control Panel
.DESCRIPTION
	This PowerShell script launches the Windows Control Panel.
#>

try {
	Start-Process control.exe
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
