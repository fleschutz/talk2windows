<#
.SYNOPSIS
	Inserts a PIN
.DESCRIPTION
	This PowerShell script inserts a PIN.
#>

(New-Object -com wscript.shell).SendKeys("123456")
& "$PSScriptRoot/say.ps1" "PIN inserted."
