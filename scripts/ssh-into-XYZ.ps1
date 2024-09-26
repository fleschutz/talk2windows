<#
.SYNOPSIS
	SSH-login into a Host
.DESCRIPTION
	This PowerShell script does a SSH login into the given host.
#>

param([string]$Part1 = "", [string]$Part2 = "", [string]$Part3 = "")

try {
	$Hostname = "$($Part1)$($Part2)$($Part3)"
	& "$PSScriptRoot/open-windows-terminal.ps1" "ssh $Hostname"
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
