<#
.SYNOPSIS
	Inserts the Slash sign
.DESCRIPTION
	This PowerShell script inserts the slash sign at the current text cursor position.
#>

(New-Object -com wscript.shell).SendKeys("/")
& "$PSScriptRoot/_reply.ps1" "Okay."	
exit 0 # success
