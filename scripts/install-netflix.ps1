<#
.SYNOPSIS
	Installs Netflix
.DESCRIPTION
	This PowerShell script installs Netflix from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Netflix, hold on..."

	& winget install "Netflix" --source msstore --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Netflix installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
