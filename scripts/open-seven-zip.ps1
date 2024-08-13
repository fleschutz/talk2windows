<#
.SYNOPSIS
	Opens 7-Zip
.DESCRIPTION
	This PowerShell script launches the 7-Zip application.
#>

try {
	Start-Process "C:\Program Files\7-Zip\7zFM.exe"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
