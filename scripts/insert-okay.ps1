<#
.SYNOPSIS
	Inserts OK
.DESCRIPTION
	This PowerShell script inserts "OK".
.EXAMPLE
	PS> ./insert-okay
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Okay."
	$obj = New-Object -com wscript.shell
	$obj.SendKeys("OK")
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
