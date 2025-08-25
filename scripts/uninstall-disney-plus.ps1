<#
.SYNOPSIS
	Uninstalls Disney+
.DESCRIPTION
	This PowerShell script uninstalls Disney+ from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling Disney Plus, hold on..."

	& winget uninstall "Disney+"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Disney Plus, is it installed?" }

	& "$PSScriptRoot/say.ps1" "Disney Plus is uninstalled now."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
