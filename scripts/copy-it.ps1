<#
.SYNOPSIS
	Copy the Selection
.DESCRIPTION
	This PowerShell script copies the selection.
#>

(New-Object -com wscript.shell).SendKeys("^C")
& "$PSScriptRoot/_reply.ps1" "Copied."