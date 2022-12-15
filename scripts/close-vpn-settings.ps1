<#
.SYNOPSIS
	Closes the VPN Settings window
.DESCRIPTION
	This PowerShell script closes the VPN Settings window gracefully.
.EXAMPLE
	PS> ./close-vpn-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/close-program.ps1" "System Settings" "SystemSettings" "SystemSettings"
exit 0 # success
