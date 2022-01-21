<#
.SYNOPSIS
	Lists the Bluetooth Devices
.DESCRIPTION
	This PowerShell script lists all connected Bluetooth devices in a table.
.EXAMPLE
	PS> ./list-bluetooth-devices
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "OK."
	Get-PnpDevice | Where-Object {$_.Class -eq "Bluetooth"} | Out-GridView -wait
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
