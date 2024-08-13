<#
.SYNOPSIS
	Installs Twitter
.DESCRIPTION
	This PowerShell script installs Twitter from the Microsoft Store.
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Twitter, please wait..."

	& winget install "Twitter" --source msstore --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "Twitter installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
