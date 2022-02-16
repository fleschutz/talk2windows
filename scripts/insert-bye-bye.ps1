<#
.SYNOPSIS
	Inserts a Bye Bye
.DESCRIPTION
	This PowerShell script inserts "bye bye".
.EXAMPLE
	PS> ./insert-bye-bye
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$obj = New-Object -com wscript.shell
	$obj.SendKeys("bye bye")
	& "$PSScriptRoot/_reply.ps1" "Okay."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
