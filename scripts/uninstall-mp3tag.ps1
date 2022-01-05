<#
.SYNOPSIS
	Uninstalls Mp3tag
.DESCRIPTION
	This PowerShell script uninstalls Mp3tag from the local computer.
.EXAMPLE
	PS> ./uninstall-mp3tag
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling Mp3tag, please wait..."

	& winget uninstall "Mp3tag"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Mp3tag, is it installed?" }

	& "$PSScriptRoot/_reply.ps1" "Mp3tag is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
