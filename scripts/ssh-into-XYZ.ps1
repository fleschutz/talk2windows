<#
.SYNOPSIS
	Perform a SSH login 
.DESCRIPTION
	This PowerShell script does a SSH login into the given host.
#>

param([string]$part1 = "", [string]$part2 = "", [string]$part3 = "")

& "$PSScriptRoot/open-windows-terminal.ps1" "ssh markus@$($part1)$($part2)$($part3)"
& "$PSScriptRoot/say.ps1" "Your password please."
exit 0 # success
