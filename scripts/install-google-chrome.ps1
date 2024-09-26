<#
.SYNOPSIS
	Installs Google Chrome
.DESCRIPTION
	This PowerShell script installs the Google Chrome browser.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Google Chrome, please wait..."

	& winget install --id Google.Chrome --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Google Chrome installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
