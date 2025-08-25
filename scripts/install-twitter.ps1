<#
.SYNOPSIS
	Installs Twitter
.DESCRIPTION
	This PowerShell script installs Twitter from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Twitter, hold on..."

	& winget install "Twitter" --source msstore --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Twitter installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
