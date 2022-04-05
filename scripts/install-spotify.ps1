<#
.SYNOPSIS
	Installs Spotify
.DESCRIPTION
	This PowerShell script installs Spotify from the Microsoft Store.
.EXAMPLE
	PS> ./install-spotify
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Spotify, please wait..."

	& winget install "Spotify - Music and Podcasts" --source msstore --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "Spotify installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
