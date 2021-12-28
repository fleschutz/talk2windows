<#
.SYNOPSIS
	Uninstalls Microsoft Edge
.DESCRIPTION
	This PowerShell script uninstalls Microsoft Edge from the local computer.
.EXAMPLE
	PS> ./uninstall-edge
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling Edge, please wait..."

	& winget uninstall "Microsoft Edge Browser"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Edge, is it installed?" }

	& "$PSScriptRoot/_reply.ps1" "Edge is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
