<#
.SYNOPSIS
	Installs the VLC media player
.DESCRIPTION
	This PowerShell script installs the VLC media player from the Microsoft Store.
.EXAMPLE
	PS> ./install-vlc
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing VLC from Microsoft Store, please wait..."

	& winget install "VLC" --source msstore --accept-package-agreements --accept-source-agreements

	& "$PSScriptRoot/_reply.ps1" "VLC is installed now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
