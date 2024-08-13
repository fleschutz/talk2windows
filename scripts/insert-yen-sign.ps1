<#
.SYNOPSIS
	Insert Yen sign
.DESCRIPTION
	This PowerShell script inserts the Yen sign ('¥').
#>

(New-Object -com wscript.shell).SendKeys("¥")
& "$PSScriptRoot/_reply.ps1" "Yen sign."
