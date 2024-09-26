<#
.SYNOPSIS
	Turns off the Computer
.DESCRIPTION
	This PowerShell script shuts down the computer immediately.
#>

try {
	& "$PSScriptRoot/say.ps1" "Bye bye."
	& shutdown.exe -s
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
