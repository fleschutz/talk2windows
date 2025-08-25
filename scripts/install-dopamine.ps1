<#
.SYNOPSIS
	Installs Dopamine
.DESCRIPTION
	This PowerShell script installs the audio player Dopamine 2.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Dopamine, hold on..."

	& winget install --id Digimezzo.Dopamine.2 --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Dopamine installed successfuly."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
