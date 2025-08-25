<#
.SYNOPSIS
	Uninstalls Zoom
.DESCRIPTION
	This PowerShell script uninstalls Zoom from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling Zoom, hold on..."

	& winget uninstall "Zoom"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Zoom, is it installed?" }

	& "$PSScriptRoot/say.ps1" "Zoom is uninstalled now."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
