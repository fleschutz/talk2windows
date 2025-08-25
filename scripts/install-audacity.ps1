<#
.SYNOPSIS
	Installs Audacity
.DESCRIPTION
	This PowerShell script installs Audacity.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Audacity, hold on..."

	& winget install --id Audacity.Audacity --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Audacity installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
