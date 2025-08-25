<#
.SYNOPSIS
	Installs Mp3tag
.DESCRIPTION
	This PowerShell script installs Mp3tag from the Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing MP3 tag, hold on..."

	& winget install "Mp3tag" --source msstore --silent --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "MP3 tag installed successfully."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
