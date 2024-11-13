<#
.SYNOPSIS
	Inserts a passworrd
.DESCRIPTION
	This PowerShell script inserts a password.
#>

(New-Object -com wscript.shell).SendKeys("P@s$w0r7")
& "$PSScriptRoot/say.ps1" "Inserted."
