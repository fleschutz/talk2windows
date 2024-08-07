﻿<#
.SYNOPSIS
	Inserts a Dollar sign
.DESCRIPTION
	This PowerShell script inserts the Dollar sign ('$') at the current text cursor position.
#>

try {
	(New-Object -com wscript.shell).SendKeys("$")
	& "$PSScriptRoot/_reply.ps1" "Okay."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}