<#
.SYNOPSIS
	Close tab
.DESCRIPTION
	This PowerShell script sends a hotkey that closes the current tab.
#>

try {
	(New-Object -com wscript.shell).SendKeys("^w")
	& "$PSScriptRoot/_reply.ps1" "Closed."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
