<#
.SYNOPSIS
	Uninstalls Mp3tag
.DESCRIPTION
	This PowerShell script uninstalls Mp3tag from the local computer.
.EXAMPLE
	PS> ./uninstall-mp-three-tag
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling MP3 tag, please wait..."

	& winget uninstall "Mp3tag"
	if ($lastExitCode -ne "0") { throw "MP3 tag isn't installed." }

	& "$PSScriptRoot/_reply.ps1" "MP3 tag is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
