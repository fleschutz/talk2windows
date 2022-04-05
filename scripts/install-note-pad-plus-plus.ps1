<#
.SYNOPSIS
	Installs Notepad++
.DESCRIPTION
	This PowerShell script installs Notepad++.
.EXAMPLE
	PS> ./install-note-pad-plus-plus
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Notepad++, please wait..."

	& winget install --id Notepad++.Notepad++ --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "Notepad++ installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
