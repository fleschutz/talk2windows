<#
.SYNOPSIS
	Opens the system settings of Windows
.DESCRIPTION
	This PowerShell script launches the system settings of Windows.
.EXAMPLE
	PS> ./open-system-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "System..."
Start-Process ms-settings:
exit 0 # success
