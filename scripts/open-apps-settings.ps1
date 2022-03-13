<#
.SYNOPSIS
	Opens the Apps settings of Windows
.DESCRIPTION
	This PowerShell script launches the apps settings of Windows.
.EXAMPLE
	PS> ./open-apps-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Apps..."
Start-Process ms-settings:appsfeatures
exit 0 # success
