<#
.SYNOPSIS
	Checks the VPN connections
.DESCRIPTION
	This PowerShell script checks the status of all available VPN connections.
#>

try {
	[int]$num = 0
	$connections = (Get-VPNConnection)
	foreach($conn in $connections) {
		& "$PSScriptRoot/_reply.ps1" "VPN $($conn.Name) is $($conn.ConnectionStatus)."
		$num++
	}
	if (!$num) { & "$PSScriptRoot/_reply.ps1" "No VPN connection configured." }
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])."
	exit 1
}
