<#
.SYNOPSIS
	Uninstalls Rufus
.DESCRIPTION
	This PowerShell script uninstalls Rufus from the local computer.
.EXAMPLE
	PS> ./uninstall-rufus
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling Rufus, please wait..."

	& winget uninstall "Rufus"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Rufus, is it installed?" }

	& "$PSScriptRoot/_reply.ps1" "Rufus is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
