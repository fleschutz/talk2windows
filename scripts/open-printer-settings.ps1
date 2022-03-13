<#
.SYNOPSIS
	Opens the printer settings of Windows
.DESCRIPTION
	This PowerShell script launches the printer settings of Windows.
.EXAMPLE
	PS> ./open-printer-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Printers..."
Start-Process ms-settings:printers
exit 0 # success
