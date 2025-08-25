<#
.SYNOPSIS
	Uninstalls Twitter
.DESCRIPTION
	This PowerShell script uninstalls Twitter from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling Twitter, hold on..."

	& winget uninstall "Twitter"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Twitter, is it installed?" }

	& "$PSScriptRoot/say.ps1" "Twitter is uninstalled now."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
