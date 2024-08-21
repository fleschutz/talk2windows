<#
.SYNOPSIS
	Installs One Calendar
.DESCRIPTION
	This PowerShell script installs One Calendar from the Microsoft Store.
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing One Calendar, please wait..."

	& winget install --id 9WZDNCRDR0SF --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "One Calendar installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
