<#
.SYNOPSIS
	Opens the Bluetooth settings of Windows
.DESCRIPTION
	This PowerShell script launches the Bluetooth settings of Windows.
#>

Start-Process ms-settings:bluetooth
& "$PSScriptRoot/say.ps1" "Your bluetooth settings."