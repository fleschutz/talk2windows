<#
.SYNOPSIS
	Installs Microsoft Edge
.DESCRIPTION
	This PowerShell script installs the Microsoft Edge Browser from the Microsoft Store.
.EXAMPLE
	PS> ./install-edge
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Edge from Microsoft Store, please wait..."

	& winget install "Microsoft Edge Browser" --source msstore --accept-package-agreements --accept-source-agreements

	& "$PSScriptRoot/_reply.ps1" "Microsoft Edge is installed now."

	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
