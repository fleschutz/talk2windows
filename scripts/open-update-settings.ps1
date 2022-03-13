<#
.SYNOPSIS
	Opens the update settings of Windows
.DESCRIPTION
	This PowerShell script launches the update settings of Windows.
.EXAMPLE
	PS> ./open-update-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Update..."
Start-Process ms-settings:windowsupdate
exit 0 # success
