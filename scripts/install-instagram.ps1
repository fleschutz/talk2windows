<#
.SYNOPSIS
	Installs Instagram
.DESCRIPTION
	This PowerShell script installs Instagram from Microsoft Store.
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Instagram from Microsoft Store, hold on..."

	& winget install --id 9NBLGGH5L9XT --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "Instagram installation failed, maybe it's already installed." }

	& "$PSScriptRoot/_reply.ps1" "Instagram installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
