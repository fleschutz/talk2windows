<#
.SYNOPSIS
	Uninstalls IrfanView
.DESCRIPTION
	This PowerShell script uninstalls IrfanView from the local computer.
.EXAMPLE
	PS> ./uninstall-irfanview
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling IrfanView, please wait..."

	& winget uninstall "IrfanView64"
	if ($lastExitCode -ne "0") { throw "Can't uninstall IrfanView, is it installed?" }

	& "$PSScriptRoot/_reply.ps1" "IrfanView is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
