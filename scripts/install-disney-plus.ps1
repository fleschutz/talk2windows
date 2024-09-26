<#
.SYNOPSIS
	Installs Disney+
.DESCRIPTION
	This PowerShell script installs Disney+ from the Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Disney Plus, please wait..."

	& winget install "Disney+" --source msstore --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Disney Plus installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
