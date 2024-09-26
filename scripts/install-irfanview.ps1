<#
.SYNOPSIS
	Installs IrfanView
.DESCRIPTION
	This PowerShell script installs IrfanView from the Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing IrfanView from Microsoft Store, please wait..."

	& winget install --id 9PJZ3BTL5PV6 --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "IrfanView installation failed, maybe it's already installed." }

	& "$PSScriptRoot/say.ps1" "IrfanView installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
