<#
.SYNOPSIS
	Uninstalls Opera Browser
.DESCRIPTION
	This PowerShell script uninstalls Opera Browser from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling Opera Browser, hold on..."

	& winget uninstall "Opera Browser"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Opera Browser, is it installed?" }

	& "$PSScriptRoot/say.ps1" "Opera Browser is uninstalled now."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
