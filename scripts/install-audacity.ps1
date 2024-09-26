<#
.SYNOPSIS
	Installs Audacity
.DESCRIPTION
	This PowerShell script installs Audacity.
.EXAMPLE
	PS> ./install-audacity
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Audacity, please wait..."

	& winget install --id Audacity.Audacity --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Audacity installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
