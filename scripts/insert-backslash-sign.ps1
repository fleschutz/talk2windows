<#
.SYNOPSIS
	Inserts the Backslash Symbol
.DESCRIPTION
	This PowerShell script inserts the backslash symbol at the current text cursor position.
.EXAMPLE
	PS> ./insert-backslash
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Okay."

	$obj = New-Object -com wscript.shell
	$obj.SendKeys("\")
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
