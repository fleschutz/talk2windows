<#
.SYNOPSIS
	SSH-login into a Host
.DESCRIPTION
	This PowerShell script does a SSH login into the given host.
.EXAMPLE
	PS> ./ssh-into-XYZ MYPC
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$Part1 = "", [string]$Part2 = "", [string]$Part3 = "")

try {
	$Hostname = "$($Part1)$($Part2)$($Part3)"
	& "$PSScriptRoot/open-windows-terminal.ps1" "ssh $Hostname"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
