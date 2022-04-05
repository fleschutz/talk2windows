<#
.SYNOPSIS
	Installs Opera GX
.DESCRIPTION
	This PowerShell script installs Opera GX from Microsoft Store.
.EXAMPLE
	PS> ./install-opera-gx
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Opera GX, please wait..."

	& winget install "Opera GX" --source msstore --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "Opera GX installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
