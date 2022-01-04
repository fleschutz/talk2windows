<#
.SYNOPSIS
	Opens Windows Bluetooth settings 
.DESCRIPTION
	This PowerShell script launches the Windows Bluetooth settings application.
.EXAMPLE
	PS> ./open-bluetooth-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-settings:bluetooth
exit 0 # success
