<#
.SYNOPSIS
	Inserts a 'Bye'
.DESCRIPTION
	This PowerShell script inserts "Bye".
#>

try {
	(New-Object -com wscript.shell).SendKeys("Bye")
	& "$PSScriptRoot/say.ps1" "Bye inserted."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
