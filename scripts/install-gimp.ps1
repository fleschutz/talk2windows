<#
.SYNOPSIS
	Installs GIMP
.DESCRIPTION
	This PowerShell script installs GIMP from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing GIMP from Microsoft Store, hold on..."

	& winget install --id XPDM27W10192Q0 --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "GIMP installation failed, maybe it's already installed." }

	& "$PSScriptRoot/say.ps1" "GIMP installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
