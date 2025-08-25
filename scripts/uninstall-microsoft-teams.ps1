<#
.SYNOPSIS
	Uninstalls Microsoft Teams
.DESCRIPTION
	This PowerShell script uninstalls Microsoft Teams from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling Microsoft Teams, hold on..."

	& winget uninstall --id Microsoft.Teams
	if ($lastExitCode -ne "0") { throw "Can't uninstall Microsoft Teams, is it installed?" }

	& "$PSScriptRoot/say.ps1" "Microsoft Teams is uninstalled now."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
