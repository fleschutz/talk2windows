<#
.SYNOPSIS
	Opens Windows printer settings 
.DESCRIPTION
	This PowerShell script launches the Windows printer settings.
.EXAMPLE
	PS> ./open-printer-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-settings:printers
exit 0 # success
