<#
.SYNOPSIS
	Installs Powertoys
.DESCRIPTION
	This PowerShell script installs Powertoys from the Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Powertoys, please wait..."

	& winget install --id XP89DCGQ3K6VLD --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "Installation of Powertoys failed, maybe it's already installed" }

	$reply = "Powertoys installed successfully."
} catch { $reply = Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
