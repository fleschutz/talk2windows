<#
.SYNOPSIS
	Insert Pound sign
.DESCRIPTION
	This PowerShell script inserts the Pound sign ('£') at the current text cursor position.
#>

(New-Object -com wscript.shell).SendKeys("£")
& "$PSScriptRoot/say.ps1" "Pound sign inserted."
