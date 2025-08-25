<#
.SYNOPSIS
	Installs Windows Terminal
.DESCRIPTION
	This PowerShell script installs Windows Terminal from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Windows Terminal, hold on..."

	& winget install --id Microsoft.WindowsTerminal --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Windows Terminal installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
