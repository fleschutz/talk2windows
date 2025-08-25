<#
.SYNOPSIS
	Uninstalls VLC
.DESCRIPTION
	This PowerShell script uninstalls the VLC media player from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling VLC media player, hold on..."

	& winget uninstall --id XPDM1ZW6815MQM
	if ($lastExitCode -ne "0") { throw "Can't uninstall VLC, is it installed?" }

	& "$PSScriptRoot/say.ps1" "VLC is uninstalled now."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
