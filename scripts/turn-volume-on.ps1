<#
.SYNOPSIS
	Turn volume on
.DESCRIPTION
	This PowerShell script unmutes the audio output.
.EXAMPLE
	PS> ./turn-volume-on
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$obj = new-object -com wscript.shell
	$obj.SendKeys([char]173)
	& "$PSScriptRoot/_reply.ps1" "Audio is on."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
