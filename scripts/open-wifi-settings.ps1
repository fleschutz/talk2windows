<#
.SYNOPSIS
	Opens the Wifi settings of Windows
.DESCRIPTION
	This PowerShell script launches the WLAN settings of Windows.
.EXAMPLE
	PS> ./open-wifi-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Wifi..."
Start-Process ms-settings:network-wifi
exit 0 # success
