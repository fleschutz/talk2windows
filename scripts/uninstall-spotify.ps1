<#
.SYNOPSIS
	Uninstalls Spotify
.DESCRIPTION
	This PowerShell script uninstalls Spotify from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling Spotify, hold on..."

	& winget uninstall "Spotify - Music and Podcasts"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Spotify, is it installed?" }

	& "$PSScriptRoot/say.ps1" "Spotify is uninstalled now."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
