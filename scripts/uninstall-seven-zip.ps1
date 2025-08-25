<#
.SYNOPSIS
	Uninstalls 7-Zip
.DESCRIPTION
	This PowerShell script uninstalls 7-Zip from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling 7-Zip, hold on..."

	& winget uninstall --id 7zip.7zip 
	if ($lastExitCode -ne "0") { throw "Can't uninstall 7-Zip, is it installed?" }

	& "$PSScriptRoot/say.ps1" "7-Zip is uninstalled now."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
