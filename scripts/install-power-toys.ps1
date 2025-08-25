<#
.SYNOPSIS
	Installs Powertoys
.DESCRIPTION
	This PowerShell script installs Microsoft Powertoys from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Microsoft Powertoys, hold on..."

	& winget install --id XP89DCGQ3K6VLD --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Microsoft Powertoys installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
