<#
.SYNOPSIS
	Pastes the Selection
.DESCRIPTION
	This PowerShell script paste the selection.
#>

(New-Object -com wscript.shell).SendKeys("^V")
& "$PSScriptRoot/_reply.ps1" "Pasted."