<#
.SYNOPSIS
	Inserts a passworrd
.DESCRIPTION
	This PowerShell script inserts a password.
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Okay."
	(New-Object -com wscript.shell).SendKeys("P@s$w0r7")
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}