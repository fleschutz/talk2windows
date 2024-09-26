<#
.SYNOPSIS
	Inserts a Bye Bye
.DESCRIPTION
	This PowerShell script inserts "bye bye".
#>

try {
	& "$PSScriptRoot/say.ps1" "Okay."
	$obj = New-Object -com wscript.shell
	$obj.SendKeys("bye bye")
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
