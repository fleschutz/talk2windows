<#
.SYNOPSIS
	Uninstalls Zoom
.DESCRIPTION
	This PowerShell script uninstalls Zoom from the local computer.
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling Zoom, just a second..."

	& winget uninstall "Zoom"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Zoom, is it installed?" }

	& "$PSScriptRoot/_reply.ps1" "Zoom is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
