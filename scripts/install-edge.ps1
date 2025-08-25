<#
.SYNOPSIS
	Installs Microsoft Edge
.DESCRIPTION
	This PowerShell script installs the Microsoft Edge Browser from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Edge, hold on..."

	& winget install "Microsoft Edge Browser" --source msstore --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "Microsoft Edge installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
