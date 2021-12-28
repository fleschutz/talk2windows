<#
.SYNOPSIS
	Uninstalls Netflix
.DESCRIPTION
	This PowerShell script uninstalls Netflix from the local computer.
.EXAMPLE
	PS> ./uninstall-netflix
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling Netflix, please wait..."

	& winget uninstall "Netflix"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Netflix, is it installed?" }

	& "$PSScriptRoot/_reply.ps1" "Netflix is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
