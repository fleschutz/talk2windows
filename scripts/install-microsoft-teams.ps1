<#
.SYNOPSIS
	Installs Microsoft Teams
.DESCRIPTION
	This PowerShell script installs Microsoft Teams from the Microsoft Store.
.EXAMPLE
	PS> ./install-microsoft-teams
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Microsoft Teams, please wait..."

	& winget install --id Microsoft.Teams --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "Microsoft Teams installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}