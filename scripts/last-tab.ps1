<#
.SYNOPSIS
	Switches to the last tab
.DESCRIPTION
	This PowerShell script presses the Last Tab keyboard shortcut.
#>

try {
	$obj = New-Object -com wscript.shell
	$obj.SendKeys("^9")
	& "$PSScriptRoot/say.ps1" "OK."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
