<#
.SYNOPSIS
	Installs Mp3tag
.DESCRIPTION
	This PowerShell script installs Mp3tag from the Microsoft Store.
.EXAMPLE
	PS> ./install-mp3tag
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Mp3tag from Microsoft Store, please wait..."

	& winget install "Mp3tag" --source msstore --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "Mp3tag is installed now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
