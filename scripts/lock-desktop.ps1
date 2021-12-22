<#
.SYNOPSIS
	Lock the desktop
.DESCRIPTION
	This PowerShell script locks the desktop.
.EXAMPLE
	PS> ./lock-desktop
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	rundll32.exe user32.dll,LockWorkStation
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
