<#
.SYNOPSIS
	Turn Volume Up
.DESCRIPTION
	This PowerShell script turns the audio volume up by +10%.
.EXAMPLE
	PS> ./louder
.NOTES
	Author:  Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([int]$percent = 10)

try {
	$obj = New-Object -com wscript.shell
	for ([int]$i = 0; $i -lt $percent; $i += 2) {
		$obj.SendKeys([char]175) # each tick is +2%
	}
	& "$PSScriptRoot/_reply.ps1" "$($percent)% louder."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
