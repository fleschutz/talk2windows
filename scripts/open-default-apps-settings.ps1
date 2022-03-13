<#
.SYNOPSIS
	Opens the default apps settings of Windows
.DESCRIPTION
	This PowerShell script launches the default apps settings of Windows.
.EXAMPLE
	PS> ./open-default-apps-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Apps..."
Start-Process ms-settings:defaultapps
exit 0 # success
