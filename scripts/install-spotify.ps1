<#
.SYNOPSIS
	Installs Spotify
.DESCRIPTION
	This PowerShell script installs Spotify from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Spotify, hold on..."

	& winget install "Spotify - Music and Podcasts" --source msstore --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Spotify installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
