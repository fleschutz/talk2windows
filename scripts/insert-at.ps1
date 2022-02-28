<#
.SYNOPSIS
	Inserts the At Symbol
.DESCRIPTION
	This PowerShell script inserts the at symbol at the current text cursor position.
.EXAMPLE
	PS> ./insert-at
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Okay."

	$sh = New-Object -com wscript.shell
	$sh.SendKeys("@")
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
