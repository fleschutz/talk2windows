<#
.SYNOPSIS
	Installs One Calendar
.DESCRIPTION
	This PowerShell script installs One Calendar from the Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing One Calendar, please wait..."

	& winget install --id 9WZDNCRDR0SF --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "One Calendar installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
