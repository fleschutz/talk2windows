<#
.SYNOPSIS
	Uninstalls Dopamine
.DESCRIPTION
	This PowerShell script uninstalls Dopamine from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling Dopamine, hold on..."

	& winget uninstall "Dopamine 2"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Dopamine, is it installed?" }

	& "$PSScriptRoot/say.ps1" "Dopamine is uninstalled now."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
