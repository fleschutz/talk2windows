<#
.SYNOPSIS
	Installs Rufus
.DESCRIPTION
	This PowerShell script installs Rufus from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Rufus, hold on..."

	& winget install --id 9PC3H3V7Q9CH --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "Rufus installation failed, maybe it's already installed." }

	& "$PSScriptRoot/say.ps1" "Rufus installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
