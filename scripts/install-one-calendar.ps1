<#
.SYNOPSIS
	Installs One Calendar
.DESCRIPTION
	This PowerShell script installs One Calendar from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing One Calendar, hold on..."

	& winget install --id 9WZDNCRDR0SF --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "One Calendar installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
