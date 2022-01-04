<#
.SYNOPSIS
	Checks the VPN connections
.DESCRIPTION
	This PowerShell script checks the status of all available VPN connections.
.EXAMPLE
	PS> ./check-vpn
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$FoundOne = $false
	$Connections = (Get-VPNConnection)
	foreach($Connection in $Connections) {
		& "$PSScriptRoot/_reply.ps1" "VPN $($Connection.Name) is $($Connection.ConnectionStatus)."
		$FoundOne = $true
	}
	if (!$FoundOne) { & "$PSScriptRoot/_reply.ps1" "No VPN connection configured." }
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])."
	exit 1
}
