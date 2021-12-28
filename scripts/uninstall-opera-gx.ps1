<#
.SYNOPSIS
	Uninstalls Opera GX
.DESCRIPTION
	This PowerShell script uninstalls Opera GX from the local computer.
.EXAMPLE
	PS> ./uninstall-opera-gx
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling Opera GX, please wait..."

	& winget uninstall "Opera GX"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Opera Browser, is it installed?" }

	& "$PSScriptRoot/_reply.ps1" "Opera GX is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
