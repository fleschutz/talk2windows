<#
.SYNOPSIS
	Reboots the computer
.DESCRIPTION
	This PowerShell script reboots the computer immediately.
.EXAMPLE
	PS> ./reboot-computer
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/PowerShell
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Okay."
	& shutdown.exe -r
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
