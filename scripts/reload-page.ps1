<#
.SYNOPSIS
	Reloads a Web page
.DESCRIPTION
	This PowerShell script presses the keyboard shortcut for 'Reload Page'.
#>

(New-Object -com wscript.shell).SendKeys("^{F5}")
& "$PSScriptRoot/say.ps1" "Reloaded."
