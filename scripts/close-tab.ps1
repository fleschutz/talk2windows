<#
.SYNOPSIS
	Close tab
.DESCRIPTION
	This PowerShell script sends a hotkey that closes the current Web browser tab.
#>

(New-Object -com wscript.shell).SendKeys("^w")
& "$PSScriptRoot/say.ps1" "Closed."
