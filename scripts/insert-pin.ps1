<#
.SYNOPSIS
	Inserts a PIN
.DESCRIPTION
	This PowerShell script inserts a PIN.
#>

(New-Object -com wscript.shell).SendKeys("123456")
& "$PSScriptRoot/_reply.ps1" "Done."
exit 0 # success
