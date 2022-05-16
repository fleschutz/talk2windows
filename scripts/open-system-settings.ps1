<#
.SYNOPSIS
	Opens the system settings
.DESCRIPTION
	This PowerShell script launches the system settings of Windows.
.EXAMPLE
	PS> ./open-system-settings
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Hold on."
Start-Process ms-settings:
exit 0 # success
