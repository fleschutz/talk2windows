<#
.SYNOPSIS
	Close tab
.DESCRIPTION
	This PowerShell script sends a hotkey that closes the current tab.
#>

try {
	$o = New-Object -com wscript.shell
	$o.SendKeys("^w")
	& "$PSScriptRoot/_reply.ps1" "Done."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
