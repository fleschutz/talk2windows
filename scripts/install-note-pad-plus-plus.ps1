<#
.SYNOPSIS
	Installs Notepad++
.DESCRIPTION
	This PowerShell script installs Notepad++.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Notepad++, please wait..."

	& winget install --id Notepad++.Notepad++ --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Notepad++ installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
