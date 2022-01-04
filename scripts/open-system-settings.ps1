<#
.SYNOPSIS
	Opens Windows system settings 
.DESCRIPTION
	This PowerShell script launches the Windows system settings application.
.EXAMPLE
	PS> ./open-system-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-settings:
exit 0 # success
