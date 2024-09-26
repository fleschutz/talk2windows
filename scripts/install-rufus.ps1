<#
.SYNOPSIS
	Installs Rufus
.DESCRIPTION
	This PowerShell script installs Rufus from the Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Rufus from Microsoft Store, hold on..."

	& winget install --id 9PC3H3V7Q9CH --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "Rufus installation failed, maybe it's already installed." }

	& "$PSScriptRoot/say.ps1" "Rufus installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
