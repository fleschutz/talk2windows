<#
.SYNOPSIS
	Inserts a Good-bye
.DESCRIPTION
	This PowerShell script inserts 'Good-bye' at the current text cursor position.
.EXAMPLE
	PS> ./insert-good-bye
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Okay."
	$ws = New-Object -com wscript.shell
	$ws.SendKeys("Good-bye")
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
