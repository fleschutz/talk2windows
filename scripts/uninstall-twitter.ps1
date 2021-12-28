<#
.SYNOPSIS
	Uninstalls Twitter
.DESCRIPTION
	This PowerShell script uninstalls Twitter from the local computer.
.EXAMPLE
	PS> ./uninstall-twitter
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling Twitter, please wait..."

	& winget uninstall "Twitter"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Twitter, is it installed?" }

	& "$PSScriptRoot/_reply.ps1" "Twitter is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
