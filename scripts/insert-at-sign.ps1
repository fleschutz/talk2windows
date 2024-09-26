<#
.SYNOPSIS
	Insert at sign
.DESCRIPTION
	This PowerShell script inserts the at sign ("@") at the current text cursor position.
#>

(New-Object -com wscript.shell).SendKeys("@")
& "$PSScriptRoot/say.ps1" "At inserted."
