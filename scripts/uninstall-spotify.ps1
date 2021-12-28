<#
.SYNOPSIS
	Uninstalls Spotify
.DESCRIPTION
	This PowerShell script uninstalls Spotify from the local computer.
.EXAMPLE
	PS> ./uninstall-spotify
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling Spotify, please wait..."

	& winget uninstall "Spotify - Music and Podcasts"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Spotify, is it installed?" }

	& "$PSScriptRoot/_reply.ps1" "Spotify is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
