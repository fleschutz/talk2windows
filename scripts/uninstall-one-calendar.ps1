c<#
.SYNOPSIS
	Uninstalls One Calendar
.DESCRIPTION
	This PowerShell script uninstalls One Calendar from the local computer.
.EXAMPLE
	PS> ./uninstall-one-calendar
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling One Calendar, please wait..."

	& winget uninstall "One Calendar"
	if ($lastExitCode -ne "0") { throw "Can't uninstall One Calendar, is it installed?" }

	& "$PSScriptRoot/_reply.ps1" "One Calendar is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
