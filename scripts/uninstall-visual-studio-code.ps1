<#
.SYNOPSIS
	Uninstalls Visual Studio Code
.DESCRIPTION
	This PowerShell script uninstalls Visual Studio Code from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling Visual Studio Code, please wait..."

	& winget uninstall "Visual Studio Code"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Visual Studio Code, is it installed?" }

	& "$PSScriptRoot/say.ps1" "Visual Studio Code is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
