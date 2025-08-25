<#
.SYNOPSIS
	Uninstalls Discord
.DESCRIPTION
	This PowerShell script uninstalls Discord from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling Discord, hold on..."

	& winget uninstall "Discord"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Discord, is it installed?" }

	& "$PSScriptRoot/say.ps1" "Discord is uninstalled now."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
