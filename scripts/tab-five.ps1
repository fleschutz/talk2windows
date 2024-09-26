<#
.SYNOPSIS
	Switches to Tab #5
.DESCRIPTION
	This PowerShell script switches to tab #5.
#>

try {
	$obj = New-Object -com wscript.shell
	$obj.SendKeys("^5")
	& "$PSScriptRoot/say.ps1" "OK."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
