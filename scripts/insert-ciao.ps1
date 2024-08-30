<#
.SYNOPSIS
	Inserts a 'Ciao'
.DESCRIPTION
	This PowerShell script inserts "Ciao".
#>

(New-Object -com wscript.shell).SendKeys("Ciao")
& "$PSScriptRoot/_reply.ps1" "Ciao inserted."
