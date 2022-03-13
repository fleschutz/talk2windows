<#
.SYNOPSIS
	Opens the Bluetooth settings of Windows
.DESCRIPTION
	This PowerShell script launches the Bluetooth settings of Windows.
.EXAMPLE
	PS> ./open-bluetooth-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Bluetooth..."
Start-Process ms-settings:bluetooth
exit 0 # success
