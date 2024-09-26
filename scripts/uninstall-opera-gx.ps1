<#
.SYNOPSIS
	Uninstalls Opera GX
.DESCRIPTION
	This PowerShell script uninstalls Opera GX from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling Opera GX, please wait..."

	& winget uninstall "Opera GX"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Opera Browser, is it installed?" }

	& "$PSScriptRoot/say.ps1" "Opera GX is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
