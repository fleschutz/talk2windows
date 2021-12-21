<#
.SYNOPSIS
	Uninstalls Mozilla Firefox
.DESCRIPTION
	This PowerShell script uninstalls Mozilla Firefox from the local computer.
.EXAMPLE
	PS> ./uninstall-firefox
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Hold on, I'm uninstalling Firefox..."

	& winget uninstall "Mozilla Firefox"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Firefox, is it installed?" }

	& "$PSScriptRoot/_reply.ps1" "Firefox is gone now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
