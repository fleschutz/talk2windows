<#
.SYNOPSIS
	Scrolls to Top of Page
.DESCRIPTION
	This PowerShell script presses the Top of Page keyboard shortcut.
#>

try {
	$obj = New-Object -com wscript.shell
	$obj.SendKeys("{HOME}")
	& "$PSScriptRoot/say.ps1" "OK."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
