<#
.SYNOPSIS
	Uninstalls Twitter
.DESCRIPTION
	This PowerShell script uninstalls Twitter from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling Twitter, please wait..."

	& winget uninstall "Twitter"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Twitter, is it installed?" }

	& "$PSScriptRoot/say.ps1" "Twitter is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
