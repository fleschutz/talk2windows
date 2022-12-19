<#
.SYNOPSIS
	Opens the VPN settings
.DESCRIPTION
	This PowerShell script launches the VPN settings of Windows.
.EXAMPLE
	PS> ./open-vpn-settings
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Hold on."
Start-Process ms-settings:network-vpn
exit 0 # success
