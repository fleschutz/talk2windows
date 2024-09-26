<#
.SYNOPSIS
	Pastes the Selection
.DESCRIPTION
	This PowerShell script paste the selection.
#>

(New-Object -com wscript.shell).SendKeys("^V")
& "$PSScriptRoot/say.ps1" "Pasted."
