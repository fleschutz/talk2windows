<#
.SYNOPSIS
	Turns the volume up
.DESCRIPTION
	This PowerShell script turns the audio volume up (by +10% by default)
.PARAMETER percent
	Specifies the percent number
.EXAMPLE
	PS> ./louder
.NOTES
	Author:  Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/PowerShell
#>

param([int]$percent = 10)

try {
	$obj = New-Object -com wscript.shell
	for ([int]$i = 0; $i -lt $percent; $i += 2) {
		$obj.SendKeys([char]175) # each tick is +2%
	}
	& "$PSScriptRoot/_reply.ps1" "OK, $($percent)% louder."
	exit 0 # success
} catch {
	"Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}