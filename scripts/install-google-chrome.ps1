<#
.SYNOPSIS
	Installs Google Chrome
.DESCRIPTION
	This PowerShell script installs the Google Chrome browser from WinGet.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Google Chrome, hold on..."

	& winget install --id Google.Chrome --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Google Chrome installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
