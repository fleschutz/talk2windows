<#
.SYNOPSIS
	Inserts a 'Bye'
.DESCRIPTION
	This PowerShell script inserts "Bye".
.EXAMPLE
	PS> ./insert-bye
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Okay."
	$obj = New-Object -com wscript.shell
	$obj.SendKeys("Bye")
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}