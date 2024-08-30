<#
.SYNOPSIS
	Inserts a 'Bye'
.DESCRIPTION
	This PowerShell script inserts "Bye".
#>

try {
	(New-Object -com wscript.shell).SendKeys("Bye")
	& "$PSScriptRoot/_reply.ps1" "Bye inserted."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
