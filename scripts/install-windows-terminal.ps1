<#
.SYNOPSIS
	Installs Windows Terminal
.DESCRIPTION
	This PowerShell script installs Windows Terminal from the Microsoft Store.
.EXAMPLE
	PS> ./install-windows-terminal
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Windows Terminal, please wait..."

	& winget install --id Microsoft.WindowsTerminal --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "Windows Terminal installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
