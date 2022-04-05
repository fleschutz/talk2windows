<#
.SYNOPSIS
	Installs Microsoft Powertoys
.DESCRIPTION
	This PowerShell script installs the Microsoft Powertoys.
.EXAMPLE
	PS> ./install-power-toys
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Microsoft Powertoys, please wait..."

	& winget install Microsoft.Powertoys --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "Microsoft Powertoys installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
