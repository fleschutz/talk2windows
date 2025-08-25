<#
.SYNOPSIS
	Installs Jellyfin
.DESCRIPTION
	This PowerShell script installs the Jellyfin media player from WinGet.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Jellyfin, hold on..."

	& winget install --id Jellyfin.JellyfinMediaPlayer --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "Installation of Jellyfin failed, maybe it's already installed." }

	& "$PSScriptRoot/say.ps1" "Jellyfin installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
