<#
.SYNOPSIS
	Installs TikTok
.DESCRIPTION
	This PowerShell script installs TikTok from the Microsoft Store.
.EXAMPLE
	PS> ./install-tiktok
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing TikTok from Microsoft Store, please wait..."

	& winget install "TikTok" --source msstore --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "TikTok is installed now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
