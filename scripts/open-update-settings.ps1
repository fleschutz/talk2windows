<#
.SYNOPSIS
	Opens Windows Update
.DESCRIPTION
	This PowerShell script launches the update settings of Windows.
.EXAMPLE
	PS> ./open-update-settings
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Just a moment."
Start-Process ms-settings:windowsupdate
exit 0 # success
