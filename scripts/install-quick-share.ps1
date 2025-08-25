<#
.SYNOPSIS
	Installs Quick Share
.DESCRIPTION
	This PowerShell script installs Google's Quick Share from WinGet.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Quick Share, hold on..."

	& winget install --id Google.QuickShare --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "Quick Share installation failed, maybe it's already installed." }

	& "$PSScriptRoot/say.ps1" "Quick Share installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
