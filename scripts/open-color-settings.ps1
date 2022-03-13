<#
.SYNOPSIS
	Opens the color settings of Windows
.DESCRIPTION
	This PowerShell script launches the color settings of Windows.
.EXAMPLE
	PS> ./open-color-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Colors..."
Start-Process ms-settings:colors
exit 0 # success
