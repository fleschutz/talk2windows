<#
.SYNOPSIS
	Insert Dollar sign
.DESCRIPTION
	This PowerShell script inserts the Dollar sign ('$') at the current text cursor position.
#>

(New-Object -com wscript.shell).SendKeys("$")
& "$PSScriptRoot/say.ps1" "Dollar sign inserted."
