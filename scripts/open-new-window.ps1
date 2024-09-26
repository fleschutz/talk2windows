<#
.SYNOPSIS
	Opens a New Window
.DESCRIPTION
	This PowerShell script sends a keyboard shortcut that opens a new window.
#>

try {
	$obj = New-Object -com wscript.shell
	$obj.SendKeys("^n")
	& "$PSScriptRoot/say.ps1" "OK."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
