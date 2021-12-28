<#
.SYNOPSIS
	Installs VLC
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
	& "$PSScriptRoot/_reply.ps1" "Installing VLC media player from Microsoft Store, please wait..."

	& winget install "VLC" --source msstore --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "VLC media player is installed now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
