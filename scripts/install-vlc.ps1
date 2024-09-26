<#
.SYNOPSIS
	Installs VLC
.DESCRIPTION
	This PowerShell script installs the VLC media player from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing VLC media player from Microsoft Store, hold on..."

	& winget install --id XPDM1ZW6815MQM --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "Installation of VLC failed, maybe it's already installed." }

	& "$PSScriptRoot/say.ps1" "VLC installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
