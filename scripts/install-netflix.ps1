<#
.SYNOPSIS
	Installs Netflix
.DESCRIPTION
	This PowerShell script installs Netflix from the Microsoft Store.
.EXAMPLE
	PS> ./install-netflix
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Netflix, please wait..."

	& winget install "Netflix" --source msstore --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "Netflix installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
