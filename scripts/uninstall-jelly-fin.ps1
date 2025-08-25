<#
.SYNOPSIS
	Uninstalls Jellyfin
.DESCRIPTION
	This PowerShell script uninstalls the Jellyfin media player from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling Jellyfin, hold on..."

	& winget uninstall --id Jellyfin.JellyfinMediaPlayer --silent
	if ($lastExitCode -ne "0") { throw "Can't uninstall Jellyfin, is it installed?" }

	& "$PSScriptRoot/say.ps1" "Jellyfin is uninstalled now."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
