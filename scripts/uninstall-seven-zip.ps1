<#
.SYNOPSIS
	Uninstalls 7-Zip
.DESCRIPTION
	This PowerShell script uninstalls 7-Zip from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling 7-Zip, please wait..."

	& winget uninstall --id 7zip.7zip 
	if ($lastExitCode -ne "0") { throw "Can't uninstall 7-Zip, is it installed?" }

	& "$PSScriptRoot/say.ps1" "7-Zip is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
