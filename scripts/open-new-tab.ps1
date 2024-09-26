<#
.SYNOPSIS
	Opens a New Tab
.DESCRIPTION
	This PowerShell script sends a keyboard shortcut that opens a new tab.
#>

try {
	(New-Object -com wscript.shell).SendKeys("^t")
	& "$PSScriptRoot/say.ps1" "OK."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
