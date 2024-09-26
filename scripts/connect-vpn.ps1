<#
.SYNOPSIS
	Connects to VPN
.DESCRIPTION
	This PowerShell script tries to establish a VPN connection.
.EXAMPLE
	PS> ./connect-vpn
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	$Connections = (Get-VPNConnection)
	foreach($Connection in $Connections) {
		if ($Connection.ConnectionStatus -eq "Disconnected") {
			& "$PSScriptRoot/say.ps1" "Connecting to VPN $($Connection.Name)..."
			& rasdial.exe "$($Connection.Name)"
			if ($lastExitCode -ne "0") { throw "Cannot establish connection" }
			& "$PSScriptRoot/say.ps1" "Connected now."
			exit 0 # success
		} elseif ($Connection.ConnectionStatus -eq "Connected") { throw "VPN $($Connection.Name) is already connected" }
	}
	throw "No VPN connection available"
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
