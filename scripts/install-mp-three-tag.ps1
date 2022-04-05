<#
.SYNOPSIS
	Installs Mp3tag
.DESCRIPTION
	This PowerShell script installs Mp3tag from the Microsoft Store.
.EXAMPLE
	PS> ./install-mp-three-tag
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing MP3 tag, please wait..."

	& winget install "Mp3tag" --source msstore --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "MP3 tag installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
