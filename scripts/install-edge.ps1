<#
.SYNOPSIS
	Installs Microsoft Edge
.DESCRIPTION
	This PowerShell script installs the Microsoft Edge Browser from the Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Edge, please wait..."

	& winget install "Microsoft Edge Browser" --source msstore --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Microsoft Edge installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
