<#
.SYNOPSIS
	Uninstalls Discord
.DESCRIPTION
	This PowerShell script uninstalls Discord from the local computer.
.EXAMPLE
	PS> ./uninstall-discord
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling Discord, please wait..."

	& winget uninstall "Discord"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Discord, is it installed?" }

	& "$PSScriptRoot/_reply.ps1" "Discord is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
