<#
.SYNOPSIS
	Lists the Network Adapters
.DESCRIPTION
	This PowerShell script lists all network adapters at the local computer.
.EXAMPLE
	PS> ./list-network-adapters
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "OK."
	Get-NetAdapter | Out-GridView -wait
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
