<#
.SYNOPSIS
	Installs Opera GX
.DESCRIPTION
	This PowerShell script installs Opera GX from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Opera GX, hold on..."

	& winget install "Opera GX" --source msstore --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Opera GX installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
