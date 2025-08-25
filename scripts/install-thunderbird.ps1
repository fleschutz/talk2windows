<#
.SYNOPSIS
	Installs Thunderbird
.DESCRIPTION
	This PowerShell script installs Mozilla Thunderbird from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing Thunderbird, hold on..."

	& winget install --id 9PM5VM1S3VMQ --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "Installation of Thunderbird failed, maybe it's already installed." }

	& "$PSScriptRoot/say.ps1" "Thunderbird installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
