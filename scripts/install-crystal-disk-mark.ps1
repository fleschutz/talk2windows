<#
.SYNOPSIS
	Installs CrystalDiskMark
.DESCRIPTION
	This PowerShell script installs CrystalDiskMark from the Microsoft Store.
.EXAMPLE
	PS> ./install-crystal-disk-mark
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing CrystalDiskMark from Microsoft Store, please wait..."

	& winget install "CrystalDiskMark Shizuku Edition" --source msstore --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "CrystalDiskMark installation completed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
