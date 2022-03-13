<#
.SYNOPSIS
	Opens the display settings of Windows
.DESCRIPTION
	This PowerShell script launches the display settings of Windows.
.EXAMPLE
	PS> ./open-display-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Display..."
Start-Process ms-settings:display
exit 0 # success
