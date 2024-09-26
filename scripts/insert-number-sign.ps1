<#
.SYNOPSIS
	Insert number sign
.DESCRIPTION
	This PowerShell script inserts a number sign ('#').
#>

(New-Object -com wscript.shell).SendKeys("#")
& "$PSScriptRoot/say.ps1" "Number sign inserted."
