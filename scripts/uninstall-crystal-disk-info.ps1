<#
.SYNOPSIS
	Uninstalls CrystalDiskInfo
.DESCRIPTION
	This PowerShell script uninstalls CrystalDiskInfo from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling CrystalDiskInfo, hold on..."

	& winget uninstall "CrystalDiskInfo"
	if ($lastExitCode -ne "0") { throw "Can't uninstall CrystalDiskInfo, is it installed?" }

	& "$PSScriptRoot/say.ps1" "CrystalDiskInfo is uninstalled now."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
