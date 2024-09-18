<#
.SYNOPSIS
	Opens the Bluetooth settings of Windows
.DESCRIPTION
	This PowerShell script launches the Bluetooth settings of Windows.
#>

& "$PSScriptRoot/_reply.ps1" "Hold on..."
Start-Process ms-settings:bluetooth