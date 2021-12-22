<#
.SYNOPSIS
	Installs Twitter
.DESCRIPTION
	This PowerShell script installs Twitter from the Microsoft Store.
.EXAMPLE
	PS> ./install-twitter
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Twitter from Microsoft Store, please wait..."

	& winget install "Twitter" --source msstore --accept-package-agreements --accept-source-agreements

	& "$PSScriptRoot/_reply.ps1" "Twitter is installed now."

	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
