<#
.SYNOPSIS
	Turns the volume off
.DESCRIPTION
	This PowerShell script mutes the audio device immediately.
#>

try {
	$obj = new-object -com wscript.shell
	$obj.SendKeys([char]173)
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
