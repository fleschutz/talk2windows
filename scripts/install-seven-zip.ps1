<#
.SYNOPSIS
	Installs 7-Zip
.DESCRIPTION
	This PowerShell script installs 7-Zip from WinGet.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing 7-Zip, hold on..."

	& winget install --id 7zip.7zip --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "Installation of 7-Zip failed, maybe it's already installed." }

	& "$PSScriptRoot/say.ps1" "7-Zip installed successfuly."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
