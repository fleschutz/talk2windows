<#
.SYNOPSIS
	Opens the Proxy settings of Windows 
.DESCRIPTION
	This PowerShell script launches the proxy settings of Windows.
#>

& "$PSScriptRoot/say.ps1" "Proxy..."
Start-Process ms-settings:network-proxy
