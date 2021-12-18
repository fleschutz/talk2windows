<#
.SYNOPSIS
	Opens Windows VPN settings 
.DESCRIPTION
	This PowerShell script launches the Windows VPN (virtual private network) settings.
.EXAMPLE
	PS> ./open-vpn-settings
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-settings:network-vpn
exit 0 # success
