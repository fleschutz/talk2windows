<#
.SYNOPSIS
	Installs Paint 3D
.DESCRIPTION
	This PowerShell script installs Paint 3D from the Microsoft Store.
.EXAMPLE
	PS> ./install-paint-3d
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Paint 3D, please wait..."

	& winget install "Paint 3D" --source msstore --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "Paint 3D installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
