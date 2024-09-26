<#
.SYNOPSIS
	Installs Mp3tag
.DESCRIPTION
	This PowerShell script installs Mp3tag from the Microsoft Store.
#>

try {
	& "$PSScriptRoot/say.ps1" "Installing MP3 tag, please wait..."

	& winget install "Mp3tag" --source msstore --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/say.ps1" "MP3 tag installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
