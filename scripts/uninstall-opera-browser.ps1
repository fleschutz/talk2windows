<#
.SYNOPSIS
	Uninstalls Opera Browser
.DESCRIPTION
	This PowerShell script uninstalls Opera Browser from the local computer.
.EXAMPLE
	PS> ./uninstall-opera-browser
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling Opera Browser, please wait..."

	& winget uninstall "Opera Browser"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Opera Browser, is it installed?" }

	& "$PSScriptRoot/_reply.ps1" "Opera Browser is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
