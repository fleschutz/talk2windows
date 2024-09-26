<#
.SYNOPSIS
	Scrolls up a page
.DESCRIPTION
	This PowerShell script presses the Page Up keyboard shortcut.
#>

try {
	$obj = New-Object -com wscript.shell
	$obj.SendKeys("{PGUP}")
	& "$PSScriptRoot/say.ps1" "OK."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
