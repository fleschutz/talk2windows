<#
.SYNOPSIS
	Uninstalls Paint 3D
.DESCRIPTION
	This PowerShell script uninstalls Paint 3D from the local computer.
.EXAMPLE
	PS> ./uninstall-paint-3d
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling Paint 3D, please wait..."

	& winget uninstall "Paint 3D"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Paint 3D, is it installed?" }

	& "$PSScriptRoot/_reply.ps1" "Paint 3D is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
