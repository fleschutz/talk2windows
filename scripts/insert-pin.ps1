<#
.SYNOPSIS
	Inserts a PIN
.DESCRIPTION
	This PowerShell script inserts a PIN.
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Okay."
	(New-Object -com wscript.shell).SendKeys("123456")
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}