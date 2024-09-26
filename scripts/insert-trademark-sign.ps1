<#
.SYNOPSIS
	Insert trademark sign
.DESCRIPTION
	This PowerShell script inserts the trademark sign.
#>

(New-Object -com wscript.shell).SendKeys("®")
& "$PSScriptRoot/say.ps1" "Trademark inserted."
