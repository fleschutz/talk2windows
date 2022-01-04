<#
.SYNOPSIS
	Opens Windows USB settings 
.DESCRIPTION
	This PowerShell script launches the Windows USB settings application.
.EXAMPLE
	PS> ./open-usb-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-settings:usb
exit 0 # success
