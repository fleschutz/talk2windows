<#
.SYNOPSIS
	Presses the Next Tab hotkey
.DESCRIPTION
	This PowerShell script presses the Next Tab keyboard shortcuts.
#>

try {
	$obj = New-Object -com wscript.shell
	$obj.SendKeys("^{PGDN}")
	& "$PSScriptRoot/say.ps1" "OK."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
