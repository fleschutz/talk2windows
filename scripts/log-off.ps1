<#
.SYNOPSIS
	Log off the current user
.DESCRIPTION
	This PowerShell script logs off the current Windows user.
.EXAMPLE
	PS> ./log-off
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	Invoke-CimMethod -ClassName Win32_Operatingsystem -MethodName Win32Shutdown -Arguments @{ Flags = 0 }
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}