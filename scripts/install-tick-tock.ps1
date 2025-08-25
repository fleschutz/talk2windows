<#
.SYNOPSIS
	Installs TikTok
.DESCRIPTION
	This PowerShell script installs TikTok from Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing TikTok, hold on..."

	& winget install "TikTok" --source msstore --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "TikTok installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
