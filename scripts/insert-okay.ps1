<#
.SYNOPSIS
	Inserts OK
.DESCRIPTION
	This PowerShell script inserts "OK".
#>

(New-Object -com wscript.shell).SendKeys("OK")
& "$PSScriptRoot/_reply.ps1" "Okay inserted."
