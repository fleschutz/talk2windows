<#
.SYNOPSIS
	Uninstalls CrystalDiskMark
.DESCRIPTION
	This PowerShell script uninstalls CrystalDiskMark from the local computer.
.EXAMPLE
	PS> ./uninstall-crystal-disk-mark
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling CrystalDiskMark, please wait..."

	& winget uninstall "CrystalDiskMark Shizuku Edition"
	if ($lastExitCode -ne "0") { throw "Can't uninstall CrystalDiskMark, is it installed?" }

	& "$PSScriptRoot/_reply.ps1" "CrystalDiskMark is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
