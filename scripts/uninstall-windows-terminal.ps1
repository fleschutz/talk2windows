<#
.SYNOPSIS
	Uninstalls Windows Terminal
.DESCRIPTION
	This PowerShell script uninstalls Windows Terminal from the local computer.
.EXAMPLE
	PS> ./uninstall-windows-terminal
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling Windows Terminal, please wait..."

	& winget uninstall --id Microsoft.WindowsTerminal
	if ($lastExitCode -ne "0") { throw "Can't uninstall Windows Terminal, is it installed?" }

	& "$PSScriptRoot/_reply.ps1" "Windows Terminal is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
