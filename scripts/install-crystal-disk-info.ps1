<#
.SYNOPSIS
	Installs CrystalDiskInfo
.DESCRIPTION
	This PowerShell script installs CrystalDiskInfo from the Microsoft Store.
.EXAMPLE
	PS> ./install-crystal-disk-info
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing CrystalDiskInfo, please wait..."

	& winget install "CrystalDiskInfo" --source msstore --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "CrystalDiskInfo installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
