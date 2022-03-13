<#
.SYNOPSIS
	Opens the Proxy settings of Windows 
.DESCRIPTION
	This PowerShell script launches the proxy settings of Windows.
.EXAMPLE
	PS> ./open-proxy-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Proxy..."
Start-Process ms-settings:network-proxy
exit 0 # success
