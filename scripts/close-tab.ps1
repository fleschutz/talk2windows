<#
.SYNOPSIS
	Close tab
.DESCRIPTION
	This PowerShell script sends a hotkey that closes the current tab.
.EXAMPLE
	PS> ./close-tab
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	$o = New-Object -com wscript.shell
	$o.SendKeys("^w")
	& "$PSScriptRoot/_reply.ps1" "Closed now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
