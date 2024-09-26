<#
.SYNOPSIS
	Installs Opera Browser
.DESCRIPTION
	This PowerShell script installs Opera Browser from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Opera Browser, please wait..."

	& winget install "Opera Browser" --source msstore --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Opera Browser installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
