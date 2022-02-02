<#
.SYNOPSIS
	Turns the volume off
.DESCRIPTION
	This PowerShell script mutes the default audio device immediately.
.EXAMPLE
	PS> ./turn-volume-off
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$obj = new-object -com wscript.shell
	$obj.SendKeys([char]173)
	& "$PSScriptRoot/_reply.ps1" "Audio is off."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
