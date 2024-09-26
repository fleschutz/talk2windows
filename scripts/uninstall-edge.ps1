<#
.SYNOPSIS
	Uninstalls Microsoft Edge
.DESCRIPTION
	This PowerShell script uninstalls Microsoft Edge from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling Edge, please wait..."

	& winget uninstall "Microsoft Edge Browser"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Edge, is it installed?" }

	& "$PSScriptRoot/say.ps1" "Edge is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
