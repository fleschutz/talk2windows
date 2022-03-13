<#
.SYNOPSIS
	Opens the start settings of Windows
.DESCRIPTION
	This PowerShell script launches the start settings of Windows.
.EXAMPLE
	PS> ./open-start-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Start..."
Start-Process ms-settings:personalization-start
exit 0 # success
