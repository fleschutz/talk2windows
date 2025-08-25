<#
.SYNOPSIS
	Uninstalls Microsoft Edge
.DESCRIPTION
	This PowerShell script uninstalls Microsoft Edge from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling Edge, hold on..."

	& winget uninstall "Microsoft Edge Browser"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Edge, is it installed?" }

	& "$PSScriptRoot/say.ps1" "Edge is uninstalled now."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
