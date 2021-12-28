<#
.SYNOPSIS
	Uninstalls Visual Studio Code
.DESCRIPTION
	This PowerShell script uninstalls Visual Studio Code from the local computer.
.EXAMPLE
	PS> ./uninstall-visual-studio-code
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling Visual Studio Code, please wait..."

	& winget uninstall "Visual Studio Code"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Visual Studio Code, is it installed?" }

	& "$PSScriptRoot/_reply.ps1" "Visual Studio Code is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
