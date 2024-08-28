<#
.SYNOPSIS
	Close tab
.DESCRIPTION
	This PowerShell script sends a hotkey that closes the current Web browser tab.
#>

try {
	(New-Object -com wscript.shell).SendKeys("^w")
	$reply = "Closed."
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/_reply.ps1" $reply
