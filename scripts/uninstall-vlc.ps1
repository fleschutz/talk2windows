<#
.SYNOPSIS
	Uninstalls VLC
.DESCRIPTION
	This PowerShell script uninstalls the VLC media player from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling VLC media player, please wait..."

	& winget uninstall --id XPDM1ZW6815MQM
	if ($lastExitCode -ne "0") { throw "Can't uninstall VLC, is it installed?" }

	& "$PSScriptRoot/say.ps1" "VLC is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
