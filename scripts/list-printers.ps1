<#
.SYNOPSIS
	Lists all Printers
.DESCRIPTION
	This PowerShell script lists all printers known to the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "OK."
	$ComputerName = $(hostname)
	Get-WMIObject -Class Win32_Printer -ComputerName $ComputerName | Out-GridView -wait
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
