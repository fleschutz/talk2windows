<#
.SYNOPSIS
	Reloads a Web page
.DESCRIPTION
	This PowerShell script presses the keyboard shortcut for 'Reload Page'.
#>

(New-Object -com wscript.shell).SendKeys("^{F5}")
& "$PSScriptRoot/_reply.ps1" "Reloaded."
