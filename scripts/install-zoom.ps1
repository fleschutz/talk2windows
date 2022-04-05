<#
.SYNOPSIS
	Installs Zoom
.DESCRIPTION
	This PowerShell script installs Zoom.
.EXAMPLE
	PS> ./install-zoom
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Zoom, please wait..."

	& winget install --id Zoom.Zoom --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "Zoom installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
