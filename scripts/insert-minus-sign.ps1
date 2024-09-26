<#
.SYNOPSIS
	Insert minus sign
.DESCRIPTION
	This PowerShell script inserts the minus sign ('-') at the current text cursor position.
#>

(New-Object -com wscript.shell).SendKeys("-")
& "$PSScriptRoot/say.ps1" "Minus inserted."
