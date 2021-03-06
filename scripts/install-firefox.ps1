<#
.SYNOPSIS
	Installs Mozilla Firefox
.DESCRIPTION
	This PowerShell script installs Mozilla Firefox from the Microsoft Store.
.EXAMPLE
	PS> ./install-firefox
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Firefox, please wait..."

	& winget install "Mozilla Firefox Browser" --source msstore --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "Firefox installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
