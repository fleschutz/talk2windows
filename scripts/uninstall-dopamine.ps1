<#
.SYNOPSIS
	Uninstalls Dopamine
.DESCRIPTION
	This PowerShell script uninstalls the audio player Dopamine.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling Dopamine, please wait..."

	& winget uninstall "Dopamine 2"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Dopamine, is it installed?" }

	& "$PSScriptRoot/say.ps1" "Dopamine is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
