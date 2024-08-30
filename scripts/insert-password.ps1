<#
.SYNOPSIS
	Inserts a passworrd
.DESCRIPTION
	This PowerShell script inserts a password.
#>

(New-Object -com wscript.shell).SendKeys("P@sSw0r7")
& "$PSScriptRoot/_reply.ps1" "Inserted."
exit 0 # success
