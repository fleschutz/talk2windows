<#
.SYNOPSIS
	Inserts OK
.DESCRIPTION
	This PowerShell script inserts "OK".
#>

(New-Object -com wscript.shell).SendKeys("OK")
& "$PSScriptRoot/say.ps1" "Okay inserted."
