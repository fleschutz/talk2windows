<#
.SYNOPSIS
	Uninstalls Zoom
.DESCRIPTION
	This PowerShell script uninstalls Zoom from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling Zoom, just a second..."

	& winget uninstall "Zoom"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Zoom, is it installed?" }

	& "$PSScriptRoot/say.ps1" "Zoom is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
