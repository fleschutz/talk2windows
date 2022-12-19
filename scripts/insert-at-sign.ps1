<#
.SYNOPSIS
	Inserts the at sign
.DESCRIPTION
	This PowerShell script inserts the at sign ("@") at the current text cursor position.
.EXAMPLE
	PS> ./insert-at-sign
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	$sh = New-Object -com wscript.shell
	$sh.SendKeys("@")
	& "$PSScriptRoot/_reply.ps1" "Okay."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
