<#
.SYNOPSIS
	Installs Git for Windows
.DESCRIPTION
	This PowerShell script installs Git for Windows from WinGet.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Git for Windows, please wait..."

	& winget install --id Git.Git -e --source winget --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Git for Windows installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
