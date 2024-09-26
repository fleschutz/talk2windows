<#
.SYNOPSIS
	Opens the USB settings of Windows
.DESCRIPTION
	This PowerShell script launches the USB settings of Windows.
#>

Start-Process ms-settings:usb
& "$PSScriptRoot/say.ps1" "Your USB settings."
