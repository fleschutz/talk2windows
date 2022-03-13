<#
.SYNOPSIS
	Opens the Ethernet settings of Windows
.DESCRIPTION
	This PowerShell script launches the Ethernet settings of Windows.
.EXAMPLE
	PS> ./open-ethernet-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Ethernet..."
Start-Process ms-settings:network-ethernet
exit 0 # success
