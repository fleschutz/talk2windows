<#
.SYNOPSIS
	Installs Git for Windows
.DESCRIPTION
	This PowerShell script installs Git for Windows.
.EXAMPLE
	PS> ./install-git-for-windows
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Git for Windows, please wait..."

	& winget install --id Git.Git -e --source winget --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "Git for Windows installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
