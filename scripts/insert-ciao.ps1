<#
.SYNOPSIS
	Inserts a 'Ciao'
.DESCRIPTION
	This PowerShell script inserts "Ciao".
.EXAMPLE
	PS> ./insert-ciao
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Okay."
	$obj = New-Object -com wscript.shell
	$obj.SendKeys("Ciao")
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}