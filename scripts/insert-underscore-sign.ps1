<#
.SYNOPSIS
	Insert Underscore sign
.DESCRIPTION
	This PowerShell script inserts the underscore sign ('_') at the current text cursor position.
#>

(New-Object -com wscript.shell).SendKeys("_")
& "$PSScriptRoot/say.ps1" "Underscore inserted."
