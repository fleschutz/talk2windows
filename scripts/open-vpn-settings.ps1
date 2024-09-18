<#
.SYNOPSIS
	Opens the VPN settings
.DESCRIPTION
	This PowerShell script launches the VPN settings of Windows.
#>

Start-Process ms-settings:network-vpn
& "$PSScriptRoot/_reply.ps1" "Your VPN settings."
exit 0 # success
