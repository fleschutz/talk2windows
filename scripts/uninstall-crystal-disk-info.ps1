<#
.SYNOPSIS
	Uninstalls CrystalDiskInfo
.DESCRIPTION
	This PowerShell script uninstalls CrystalDiskInfo from the local computer.
.EXAMPLE
	PS> ./uninstall-crystal-disk-info
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling CrystalDiskInfo, please wait..."

	& winget uninstall "CrystalDiskInfo"
	if ($lastExitCode -ne "0") { throw "Can't uninstall CrystalDiskInfo, is it installed?" }

	& "$PSScriptRoot/_reply.ps1" "CrystalDiskInfo is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
