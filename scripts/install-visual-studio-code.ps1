<#
.SYNOPSIS
	Installs Visual Studio Code
.DESCRIPTION
	This PowerShell script installs Visual Studio Code from WinGet.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Visual Studio Code, hold on..."

	& winget install --id Microsoft.VisualStudioCode --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Visual Studio Code installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
