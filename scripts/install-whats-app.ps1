<#
.SYNOPSIS
	Installs WhatsApp
.DESCRIPTION
	This PowerShell script installs WhatsApp from the Microsoft Store.
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing WhatsApp, please wait..."

	& winget install --id 9NKSQGP7F2NH --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "WhatsApp installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
