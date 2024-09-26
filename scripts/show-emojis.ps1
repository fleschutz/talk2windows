<#
.SYNOPSIS
	Shows the Emoji Keyboard
.DESCRIPTION
	This PowerShell script show the emoji keyboard to insert characters
#>

try {
	$obj = New-Object -com wscript.shell
	$obj.SendKeys("^{ESC}")
	& "$PSScriptRoot/say.ps1" "OK."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
