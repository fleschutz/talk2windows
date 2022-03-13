<#
.SYNOPSIS
	Opens the recovery settings of Windows
.DESCRIPTION
	This PowerShell script launches the recovery settings of Windows.
.EXAMPLE
	PS> ./open-recovery-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Recovery..."
Start-Process ms-settings:recovery
exit 0 # success
