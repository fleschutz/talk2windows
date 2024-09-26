<#
.SYNOPSIS
	Installs Zoom
.DESCRIPTION
	This PowerShell script installs Zoom.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Zoom, please wait..."

	& winget install --id XP99J3KP4XZ4VV --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "Installation of Zoom failed, is it already installed?" }

	& "$PSScriptRoot/say.ps1" "Zoom installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
