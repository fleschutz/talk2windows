<#
.SYNOPSIS
	Lists the Network Adapters
.DESCRIPTION
	This PowerShell script lists all network adapters at the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "OK."
	Get-NetAdapter | Out-GridView -wait
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
