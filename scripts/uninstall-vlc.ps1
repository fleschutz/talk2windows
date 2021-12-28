<#
.SYNOPSIS
	Uninstalls VLC
.DESCRIPTION
	This PowerShell script uninstalls the VLC media player from the local computer.
.EXAMPLE
	PS> ./uninstall-vlc
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling VLC media player, please wait..."

	& winget uninstall "VLC"
	if ($lastExitCode -ne "0") { throw "Can't uninstall VLC media player, is it installed?" }

	& "$PSScriptRoot/_reply.ps1" "VLC media player is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
