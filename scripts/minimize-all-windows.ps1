<#
.SYNOPSIS
	Minimizes all windows
.DESCRIPTION
	This PowerShell script minimizes all open windows.
.EXAMPLE
	PS> ./minimize-all-windows
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$shell = New-Object -ComObject "Shell.Application"
$shell.minimizeall()
exit 0 # success
