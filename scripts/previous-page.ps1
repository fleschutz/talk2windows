<#
.SYNOPSIS
	Presses the Previous Page hotkey
.DESCRIPTION
	This PowerShell script presses the Previous Page keyboard shortcut.
#>

try {
	$obj = New-Object -com wscript.shell
	$obj.SendKeys("%{LEFT}")
	& "$PSScriptRoot/say.ps1" "OK."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
