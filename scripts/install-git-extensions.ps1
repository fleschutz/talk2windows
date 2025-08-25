<#
.SYNOPSIS
	Installs Git Extensions
.DESCRIPTION
	This PowerShell script installs Git Extensions from WinGet.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Git Extensions, hold on..."

	& winget install --id GitExtensionsTeam.GitExtensions --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Git Extensions installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
