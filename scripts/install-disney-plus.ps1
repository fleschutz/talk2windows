<#
.SYNOPSIS
	Installs Disney+
.DESCRIPTION
	This PowerShell script installs Disney+ from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Disney Plus, hold on..."

	& winget install "Disney+" --source msstore --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Disney Plus installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
