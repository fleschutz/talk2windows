<#
.SYNOPSIS
	Installs WhatsApp
.DESCRIPTION
	This PowerShell script installs WhatsApp from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing WhatsApp, hold on..."

	& winget install --id 9NKSQGP7F2NH --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "Installation of WhatsApp failed, maybe it's already installed." }

	& "$PSScriptRoot/say.ps1" "WhatsApp installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
