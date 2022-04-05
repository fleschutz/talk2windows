<#
.SYNOPSIS
	Installs Opera Browser
.DESCRIPTION
	This PowerShell script installs Opera Browser from Microsoft Store.
.EXAMPLE
	PS> ./install-opera-browser
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Opera Browser, please wait..."

	& winget install "Opera Browser" --source msstore --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "Opera Browser installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
