<#
.SYNOPSIS
	Insert minus sign
.DESCRIPTION
	This PowerShell script inserts the minus sign ('-') at the current text cursor position.
#>

(New-Object -com wscript.shell).SendKeys("-")
& "$PSScriptRoot/_reply.ps1" "Minus sign."
