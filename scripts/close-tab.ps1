<#
.SYNOPSIS
	Close the current tab
.DESCRIPTION
	This PowerShell script sends a hotkey that closes the current tab.
.EXAMPLE
	PS> ./close-tab
.NOTES
	Author:  Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$obj = New-Object -com wscript.shell
	$obj.SendKeys("^W")
	& "$PSScriptRoot/_reply.ps1" "OK."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
