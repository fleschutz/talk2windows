<#
.SYNOPSIS
	Uninstalls Git Extensions
.DESCRIPTION
	This PowerShell script uninstalls Git Extensions from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling Git Extensions, please wait..."

	& winget uninstall --id GitExtensionsTeam.GitExtensions
	if ($lastExitCode -ne "0") { throw "Can't uninstall Git Extensions, is it installed?" }

	& "$PSScriptRoot/say.ps1" "Git Extensions is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
