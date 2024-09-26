<#
.SYNOPSIS
	Uninstalls Opera Browser
.DESCRIPTION
	This PowerShell script uninstalls Opera Browser from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling Opera Browser, please wait..."

	& winget uninstall "Opera Browser"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Opera Browser, is it installed?" }

	& "$PSScriptRoot/say.ps1" "Opera Browser is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
