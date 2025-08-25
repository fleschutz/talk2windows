<#
.SYNOPSIS
	Installs Microsoft Teams
.DESCRIPTION
	This PowerShell script installs Microsoft Teams from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Microsoft Teams, hold on..."

	& winget install --id Microsoft.Teams --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Microsoft Teams installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
