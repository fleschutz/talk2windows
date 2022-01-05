<#
.SYNOPSIS
	Lists all Printers
.DESCRIPTION
	This PowerShell script lists all printers known to the local computer.
.EXAMPLE
	PS> ./list-printers
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$ComputerName = $(hostname)
	Get-WMIObject -Class Win32_Printer -ComputerName $ComputerName | Out-GridView
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
