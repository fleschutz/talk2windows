<#
.SYNOPSIS
	Installs Quick Share
.DESCRIPTION
	This PowerShell script installs the Quick Share application from Google.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Quick Share, please wait..."

	& winget install --id Google.QuickShare --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "Quick Share installation failed, maybe it's already installed." }

	& "$PSScriptRoot/say.ps1" "Quick Share installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
