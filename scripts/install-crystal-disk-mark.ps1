<#
.SYNOPSIS
	Installs CrystalDiskMark
.DESCRIPTION
	This PowerShell script installs CrystalDiskMark from the Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing CrystalDiskMark, hold on..."

	& winget install "CrystalDiskMark Shizuku Edition" --source msstore --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "CrystalDiskMark installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
