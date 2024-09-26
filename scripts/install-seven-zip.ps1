<#
.SYNOPSIS
	Installs 7-Zip
.DESCRIPTION
	This PowerShell script installs 7-Zip.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing 7-Zip, please wait..."

	& winget install --id 7zip.7zip --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "Installation of 7-Zip failed, maybe it's already installed." }

	& "$PSScriptRoot/say.ps1" "7-Zip installed successfuly."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
