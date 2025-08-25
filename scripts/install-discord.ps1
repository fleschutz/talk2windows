<#
.SYNOPSIS
	Installs Discord
.DESCRIPTION
	This PowerShell script installs Discord from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Discord, hold on..."

	& winget install --id XPDC2RH70K22MN --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Discord installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
