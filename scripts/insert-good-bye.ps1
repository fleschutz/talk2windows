<#
.SYNOPSIS
	Inserts a Good-bye
.DESCRIPTION
	This PowerShell script inserts 'Good-bye' at the current text cursor position.
#>

(New-Object -com wscript.shell).SendKeys("Good-bye")
& "$PSScriptRoot/say.ps1" "Good-bye inserted."
