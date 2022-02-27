<#
.SYNOPSIS
	Inserts 'Good morning'
.DESCRIPTION
	This PowerShell script inserts the text 'Good morning'.
.EXAMPLE
	PS> ./insert-good-morning
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Okay."
	$obj = New-Object -com wscript.shell
	$obj.SendKeys("Good morning")
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
