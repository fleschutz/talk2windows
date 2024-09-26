<#
.SYNOPSIS
	Switches to Tab #6
.DESCRIPTION
	This PowerShell script switches to tab #6.
#>

try {
	$obj = New-Object -com wscript.shell
	$obj.SendKeys("^6")
	& "$PSScriptRoot/say.ps1" "OK."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
