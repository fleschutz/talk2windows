<#
.SYNOPSIS
	Locks the Computer
.DESCRIPTION
	This PowerShell script immediately locks the computer desktop.
.EXAMPLE
	PS> ./lock-computer
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
