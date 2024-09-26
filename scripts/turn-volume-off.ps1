<#
.SYNOPSIS
	Turn volume off
.DESCRIPTION
	This PowerShell script mutes the default audio device immediately.
#>

try {
	$obj = new-object -com wscript.shell
	$obj.SendKeys([char]173)
	& "$PSScriptRoot/say.ps1" "Off now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
