<#
.SYNOPSIS
	Inserts the pipe character
.DESCRIPTION
	This PowerShell script inserts the pipe character ('|').
.EXAMPLE
	PS> ./insert-pipe
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Okay."

	$obj = New-Object -com wscript.shell
	$obj.SendKeys("|")
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
