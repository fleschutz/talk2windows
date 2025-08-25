<#
.SYNOPSIS
	Installs CrystalDiskInfo
.DESCRIPTION
	This PowerShell script installs CrystalDiskInfo from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing CrystalDiskInfo, hold on..."

	& winget install "CrystalDiskInfo" --source msstore --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "CrystalDiskInfo installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
