<#
.SYNOPSIS
	Turns off the Computer
.DESCRIPTION
	This PowerShell script shuts down the computer immediately.
.EXAMPLE
	PS> ./shut-down-computer
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Bye bye."
	& shutdown.exe -s
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
