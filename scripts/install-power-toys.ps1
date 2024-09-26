<#
.SYNOPSIS
	Installs Microsoft Powertoys
.DESCRIPTION
	This PowerShell script installs the Microsoft Powertoys.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Microsoft Powertoys, please wait..."

	& winget install Microsoft.Powertoys --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Microsoft Powertoys installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
