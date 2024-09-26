<#
.SYNOPSIS
	Inserts 'Good morning'
.DESCRIPTION
	This PowerShell script inserts the text 'Good morning'.
#>

(New-Object -com wscript.shell).SendKeys("Good morning")
& "$PSScriptRoot/say.ps1" "Good morning inserted."
