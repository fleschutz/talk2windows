<#
.SYNOPSIS
	Installs Paint 3D
.DESCRIPTION
	This PowerShell script installs Paint 3D from the Microsoft Store.
.EXAMPLE
	PS> ./install-paint-3d
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Paint 3D from Microsoft Store, please wait..."

	& winget install "Paint 3D" --source msstore --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "Paint 3D is installed now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
