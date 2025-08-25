<#
.SYNOPSIS
	Uninstalls Mozilla Firefox
.DESCRIPTION
	This PowerShell script uninstalls Mozilla Firefox from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling Firefox, hold on..."

	& winget uninstall "Mozilla Firefox"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Firefox, is it installed?" }

	& "$PSScriptRoot/say.ps1" "Firefox is uninstalled now."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
