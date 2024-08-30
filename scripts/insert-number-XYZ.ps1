<#
.SYNOPSIS
	Insert number <X>
.DESCRIPTION
	This PowerShell script inserts the given number at the current text cursor position.
#>

param([int]$number)
(New-Object -com wscript.shell).SendKeys("$number")
& "$PSScriptRoot/_reply.ps1" "$number inserted."
