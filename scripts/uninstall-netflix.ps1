<#
.SYNOPSIS
	Uninstalls Netflix
.DESCRIPTION
	This PowerShell script uninstalls Netflix from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling Netflix, hold on..."

	& winget uninstall "Netflix"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Netflix, is it installed?" }

	& "$PSScriptRoot/say.ps1" "Netflix is uninstalled now."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
