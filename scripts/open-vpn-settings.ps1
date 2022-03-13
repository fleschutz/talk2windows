<#
.SYNOPSIS
	Opens the VPN settings of Windows
.DESCRIPTION
	This PowerShell script launches the VPN settings of Windows.
.EXAMPLE
	PS> ./open-vpn-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "V.P.N..."
Start-Process ms-settings:network-vpn
exit 0 # success
