<#
.SYNOPSIS
	Lists the Bluetooth Devices
.DESCRIPTION
	This PowerShell script lists all connected Bluetooth devices in a table.
#>

try {
	& "$PSScriptRoot/say.ps1" "OK."
	Get-PnpDevice | Where-Object {$_.Class -eq "Bluetooth"} | Out-GridView -wait
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
