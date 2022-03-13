<#
.SYNOPSIS
	Opens the USB settings of Windows
.DESCRIPTION
	This PowerShell script launches the USB settings of Windows.
.EXAMPLE
	PS> ./open-usb-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "U.S.B..."
Start-Process ms-settings:usb
exit 0 # success
