<#
.SYNOPSIS
	Opens Windows Ethernet settings 
.DESCRIPTION
	This PowerShell script launches the Windows Ethernet settings.
.EXAMPLE
	PS> ./open-ethernet-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-settings:network-ethernet
exit 0 # success
