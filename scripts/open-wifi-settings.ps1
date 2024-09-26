<#
.SYNOPSIS
	Opens the Wifi settings of Windows
.DESCRIPTION
	This PowerShell script launches the WLAN settings of Windows.
#>

Start-Process ms-settings:network-wifi
& "$PSScriptRoot/say.ps1" "Your Wifi settings."
