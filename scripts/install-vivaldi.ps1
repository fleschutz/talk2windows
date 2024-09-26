<#
.SYNOPSIS
	Installs Vivaldi
.DESCRIPTION
	This PowerShell script installs the Vivaldi browser.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Vivaldi, please wait..."

	& winget install --id VivaldiTechnologies.Vivaldi --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Vivaldi installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
