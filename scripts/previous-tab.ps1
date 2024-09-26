<#
.SYNOPSIS
	Presses the Previous Tab hotkey
.DESCRIPTION
	This PowerShell script presses the Previous Tab keyboard shortcuts.
#>

try {
	$obj = New-Object -com wscript.shell
	$obj.SendKeys("^{PGUP}")
	& "$PSScriptRoot/say.ps1" "OK."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
