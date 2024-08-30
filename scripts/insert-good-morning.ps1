<#
.SYNOPSIS
	Inserts 'Good morning'
.DESCRIPTION
	This PowerShell script inserts the text 'Good morning'.
#>

(New-Object -com wscript.shell).SendKeys("Good morning")
& "$PSScriptRoot/_reply.ps1" "Good morning inserted."
