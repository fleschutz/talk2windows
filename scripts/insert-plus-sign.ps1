<#
.SYNOPSIS
	Insert plus sign
.DESCRIPTION
	This PowerShell script inserts the plus sign ('+') at the current text cursor position.
#>

(New-Object -com wscript.shell).SendKeys("{+}")
& "$PSScriptRoot/say.ps1" "Plus inserted."
