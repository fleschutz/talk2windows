<#
.SYNOPSIS
	Installs Spotify
.DESCRIPTION
	This PowerShell script installs Spotify from the Microsoft Store.
.EXAMPLE
	PS> ./install-spotify
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Spotify from Microsoft Store, please wait..."

	& winget install "Spotify - Music and Podcasts" --source msstore --accept-package-agreements --accept-source-agreements

	& "$PSScriptRoot/_reply.ps1" "Spotify is installed now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
