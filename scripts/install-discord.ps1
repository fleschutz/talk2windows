<#
.SYNOPSIS
	Installs Discord
.DESCRIPTION
	This PowerShell script installs Discord from the Microsoft Store.
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Discord, please wait..."

	& winget install --id XPDC2RH70K22MN --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "Discord installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
