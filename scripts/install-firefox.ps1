<#
.SYNOPSIS
	Installs Mozilla Firefox
.DESCRIPTION
	This PowerShell script installs Mozilla Firefox from the Microsoft Store.
.EXAMPLE
	PS> ./install-firefox
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Hold on, I'm installing Firefox..."

	& winget install "Mozilla Firefox Browser" --source msstore --accept-package-agreements --accept-source-agreements

	& "$PSScriptRoot/_reply.ps1" "Firefox is installed now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
