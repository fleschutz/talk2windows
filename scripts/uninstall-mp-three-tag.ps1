<#
.SYNOPSIS
	Uninstalls Mp3tag
.DESCRIPTION
	This PowerShell script uninstalls Mp3tag from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling MP3 tag, hold on..."

	& winget uninstall "Mp3tag"
	if ($lastExitCode -ne "0") { throw "MP3 tag isn't installed." }

	& "$PSScriptRoot/say.ps1" "MP3 tag is uninstalled now."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
