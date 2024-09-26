<#
.SYNOPSIS
	Switches to Tab #1
.DESCRIPTION
	This PowerShell script switches to tab #1.
#>

try {
	(New-Object -com wscript.shell).SendKeys("^1")
	& "$PSScriptRoot/say.ps1" "OK."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
