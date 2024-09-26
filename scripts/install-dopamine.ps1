<#
.SYNOPSIS
	Installs Dopamine
.DESCRIPTION
	This PowerShell script installs the audio player Dopamine 2.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Dopamine, please wait..."

	& winget install --id Digimezzo.Dopamine.2 --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Dopamine installed successfuly."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
