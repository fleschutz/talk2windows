<#
.SYNOPSIS
	Installs Firefox
.DESCRIPTION
	This PowerShell script installs Mozilla Firefox from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Firefox, hold on..."

	& winget install "Mozilla Firefox Browser" --source msstore --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Firefox installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
