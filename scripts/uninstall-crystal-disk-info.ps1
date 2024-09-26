<#
.SYNOPSIS
	Uninstalls CrystalDiskInfo
.DESCRIPTION
	This PowerShell script uninstalls CrystalDiskInfo from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling CrystalDiskInfo, please wait..."

	& winget uninstall "CrystalDiskInfo"
	if ($lastExitCode -ne "0") { throw "Can't uninstall CrystalDiskInfo, is it installed?" }

	& "$PSScriptRoot/say.ps1" "CrystalDiskInfo is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
