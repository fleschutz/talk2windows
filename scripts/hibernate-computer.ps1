<#
.SYNOPSIS
	Hibernates the Computer
.DESCRIPTION
	This PowerShell script hibernates the computer immediately.
.EXAMPLE
	PS> ./hibernate-computer
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/PowerShell
#>

#Requires -RunAsAdministrator

try {
	Start-Process powercfg.exe /hibernate
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Error: $($Error[0])"
	exit 1
}
