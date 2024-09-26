<#
.SYNOPSIS
	Installs Netflix
.DESCRIPTION
	This PowerShell script installs Netflix from the Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Netflix, please wait..."

	& winget install "Netflix" --source msstore --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Netflix installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
