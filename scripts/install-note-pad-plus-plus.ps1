<#
.SYNOPSIS
	Installs Notepad++
.DESCRIPTION
	This PowerShell script installs Notepad++ from WinGet.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Notepad++, hold on..."

	& winget install --id Notepad++.Notepad++ --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Notepad++ installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
