<#
.SYNOPSIS
	Uninstalls Microsoft Teams
.DESCRIPTION
	This PowerShell script uninstalls Microsoft Teams from the local computer.
.EXAMPLE
	PS> ./uninstall-microsoft-teams
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling Microsoft Teams, please wait..."

	& winget uninstall --id Microsoft.Teams
	if ($lastExitCode -ne "0") { throw "Can't uninstall Microsoft Teams, is it installed?" }

	& "$PSScriptRoot/_reply.ps1" "Microsoft Teams is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
