<#
.SYNOPSIS
	Installs GIMP
.DESCRIPTION
	This PowerShell script installs GIMP from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing GIMP, hold on..."

	& winget install --id XPDM27W10192Q0 --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "GIMP installation failed, maybe it's already installed." }

	& "$PSScriptRoot/say.ps1" "GIMP installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
