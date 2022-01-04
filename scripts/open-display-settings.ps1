<#
.SYNOPSIS
	Opens Windows display settings 
.DESCRIPTION
	This PowerShell script launches the Windows display settings application.
.EXAMPLE
	PS> ./open-display-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-settings:display
exit 0 # success
