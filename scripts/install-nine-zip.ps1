<#
.SYNOPSIS
	Installs 9 ZIP
.DESCRIPTION
	This PowerShell script installs 9 ZIP from the Microsoft Store.
.EXAMPLE
	PS> ./install-nine-zip
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing 9 ZIP from Microsoft Store, please wait..."

	& winget install "9 ZIP - open rar, zip, 7zip, gzip" --source msstore --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "9 ZIP installation completed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
