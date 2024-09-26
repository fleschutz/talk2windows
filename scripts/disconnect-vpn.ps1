<#
.SYNOPSIS
	Disconnect VPN
.DESCRIPTION
	This PowerShell script disconnects the active VPN connection.
#>

try {
	$Connections = (Get-VPNConnection)
	foreach($Connection in $Connections) {
		if ($Connection.ConnectionStatus -ne "Connected") { continue }
		& "$PSScriptRoot/say.ps1" "Disconnecting $($Connection.Name)..."
		& rasdial.exe "$($Connection.Name)" /DISCONNECT
		if ($lastExitCode -ne "0") { throw "Disconnect failed with exit code $lastExitCode" }
		& "$PSScriptRoot/say.ps1" "Disconnected now."
		exit 0 # success
	}
	throw "No VPN connection found."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
