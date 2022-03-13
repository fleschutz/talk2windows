<#
.SYNOPSIS
	Opens the themes settings of Windows
.DESCRIPTION
	This PowerShell script launches the themes settings of Windows.
.EXAMPLE
	PS> ./open-themes-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Themes..."
Start-Process ms-settings:themes
exit 0 # success
