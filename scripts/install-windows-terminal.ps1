<#
.SYNOPSIS
	Installs Windows Terminal
.DESCRIPTION
	This PowerShell script installs Windows Terminal from the Microsoft Store.
.EXAMPLE
	PS> ./install-windows-terminal
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Windows Terminal from Microsoft Store, please wait..."

	& winget install "Windows Terminal" --source msstore --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "Windows Terminal is installed now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
