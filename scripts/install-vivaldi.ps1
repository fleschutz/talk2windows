<#
.SYNOPSIS
	Installs Vivaldi
.DESCRIPTION
	This PowerShell script installs the Vivaldi browser from WinGet.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Vivaldi, hold on..."

	& winget install --id VivaldiTechnologies.Vivaldi --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Vivaldi installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
