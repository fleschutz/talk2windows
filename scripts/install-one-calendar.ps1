<#
.SYNOPSIS
	Installs One Calendar
.DESCRIPTION
	This PowerShell script installs One Calendar from the Microsoft Store.
.EXAMPLE
	PS> ./install-one-calendar
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing One Calendar, please wait..."

	& winget install "One Calendar" --source msstore --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "One Calendar installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
