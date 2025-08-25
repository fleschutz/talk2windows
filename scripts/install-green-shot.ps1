<#
.SYNOPSIS
	Installs Greenshot
.DESCRIPTION
	This PowerShell script installs Greenshot from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Greenshot, hold on..."

	& winget install --id 9N8Z6RQX8LV8 --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "Greenshot installation failed, maybe it's already installed." }

	& "$PSScriptRoot/say.ps1" "Greenshot installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
