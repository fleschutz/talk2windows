<#
.SYNOPSIS
	Uninstalls TikTok
.DESCRIPTION
	This PowerShell script uninstalls TikTok from the local computer.
.EXAMPLE
	PS> ./uninstall-tick-tock
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling TikTok, please wait..."

	& winget uninstall "TikTok"
	if ($lastExitCode -ne "0") { throw "Can't uninstall TikTok, is it installed?" }

	& "$PSScriptRoot/_reply.ps1" "TikTok is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
