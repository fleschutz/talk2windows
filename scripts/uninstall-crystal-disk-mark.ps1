<#
.SYNOPSIS
	Uninstalls CrystalDiskMark
.DESCRIPTION
	This PowerShell script uninstalls CrystalDiskMark from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling CrystalDiskMark, please wait..."

	& winget uninstall "CrystalDiskMark Shizuku Edition"
	if ($lastExitCode -ne "0") { throw "Can't uninstall CrystalDiskMark, is it installed?" }

	& "$PSScriptRoot/say.ps1" "CrystalDiskMark is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
