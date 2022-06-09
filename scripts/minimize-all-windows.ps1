<#
.SYNOPSIS
	Minimizes all windows
.DESCRIPTION
	This PowerShell script minimizes all open windows.
.EXAMPLE
	PS> ./minimize-all-windows
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	$shell = New-Object -ComObject "Shell.Application"
	$shell.minimizeall()
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}