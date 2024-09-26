<#
.SYNOPSIS
	Opens the Bluetooth settings of Windows
.DESCRIPTION
	This PowerShell script launches the Bluetooth settings of Windows.
#>

& "$PSScriptRoot/say.ps1" "Hold on..."
Start-Process ms-settings:bluetooth
