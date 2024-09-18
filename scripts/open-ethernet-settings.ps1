<#
.SYNOPSIS
	Opens the Ethernet settings of Windows
.DESCRIPTION
	This PowerShell script launches the Ethernet settings of Windows.
#>

& "$PSScriptRoot/_reply.ps1" "Hold on..."
Start-Process ms-settings:network-ethernet
exit 0 # success
