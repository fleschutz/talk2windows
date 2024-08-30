<#
.SYNOPSIS
	Inserts a 'Hi'
.DESCRIPTION
	This PowerShell script inserts "Hi".
#>

(New-Object -com wscript.shell).SendKeys("Hi")
& "$PSScriptRoot/_reply.ps1" "Hi inserted."
