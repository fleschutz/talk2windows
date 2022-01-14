<#
.SYNOPSIS
	Launches Remote Desktop
.DESCRIPTION
	This PowerShell script launches the Remote Desktop application for a RDP session.
.EXAMPLE
	PS> ./open-remote-desktop
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	start-process mstsc.exe
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
