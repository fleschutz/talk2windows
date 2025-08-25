<#
.SYNOPSIS
	Installs Zoom
.DESCRIPTION
	This PowerShell script installs Zoom from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Zoom, hold on..."

	& winget install --id XP99J3KP4XZ4VV --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "Installation of Zoom failed, is it already installed?" }

	& "$PSScriptRoot/say.ps1" "Zoom installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
