<#
.SYNOPSIS
	Installs Sticky Notes
.DESCRIPTION
	This PowerShell script installs Sticky Notes from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Sticky Notes, hold on..."

	& winget install --id 9NBLGGH4QGHW --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "Installation of Sticky Notes failed, maybe it's already installed." }

	& "$PSScriptRoot/say.ps1" "Sticky Notes installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
