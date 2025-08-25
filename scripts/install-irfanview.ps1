<#
.SYNOPSIS
	Installs IrfanView
.DESCRIPTION
	This PowerShell script installs IrfanView from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing IrfanView, hold on..."

	& winget install --id 9PJZ3BTL5PV6 --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "IrfanView installation failed, maybe it's already installed." }

	& "$PSScriptRoot/say.ps1" "IrfanView installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
