<#
.SYNOPSIS
	Insert Euro sign
.DESCRIPTION
	This PowerShell script inserts the Euro sign ('€') at the current text cursor position.
#>

(New-Object -com wscript.shell).SendKeys("€")
& "$PSScriptRoot/say.ps1" "Euro sign inserted."
