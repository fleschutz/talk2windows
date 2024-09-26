<#
.SYNOPSIS
	Log off the current user
.DESCRIPTION
	This PowerShell script logs off the current Windows user.
#>

try {
	Invoke-CimMethod -ClassName Win32_Operatingsystem -MethodName Win32Shutdown -Arguments @{ Flags = 0 }
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
