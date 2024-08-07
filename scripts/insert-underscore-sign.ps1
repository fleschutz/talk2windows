<#
.SYNOPSIS
	Inserts an Underscore
.DESCRIPTION
	This PowerShell script inserts the underscore sign ('_') at the current text cursor position.
#>

(New-Object -com wscript.shell).SendKeys("_")
& "$PSScriptRoot/_reply.ps1" "Okay."
exit 0 # success
