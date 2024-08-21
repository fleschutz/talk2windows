<#
.SYNOPSIS
	Installs Thunderbird
.DESCRIPTION
	This PowerShell script installs Mozilla Thunderbird.
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Mozilla Thunderbird from Microsoft Store, hold on..."

	& winget install --id 9PM5VM1S3VMQ --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "Mozilla Thunderbird installation failed, maybe it's already installed." }

	& "$PSScriptRoot/_reply.ps1" "Mozilla Thunderbird installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
