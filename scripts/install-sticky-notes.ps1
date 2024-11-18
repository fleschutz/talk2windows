<#
.SYNOPSIS
	Installs Sticky Notes
.DESCRIPTION
	This PowerShell script installs Sticky Notes from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Sticky Notes from Microsoft Store, hold on..."

	& winget install --id 9NBLGGH4QGHW --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "Installation of Sticky Notes failed, maybe it's already installed." }

	& "$PSScriptRoot/say.ps1" "Sticky Notes installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
