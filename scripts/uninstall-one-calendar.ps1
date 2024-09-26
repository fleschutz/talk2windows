<#
.SYNOPSIS
	Uninstalls One Calendar
.DESCRIPTION
	This PowerShell script uninstalls One Calendar from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling One Calendar, please wait..."

	& winget uninstall --id 9WZDNCRDR0SF
	if ($lastExitCode -ne "0") { throw "Can't uninstall One Calendar, is it installed?" }

	& "$PSScriptRoot/say.ps1" "One Calendar is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
