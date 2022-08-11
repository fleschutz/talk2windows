<#
.SYNOPSIS
	Uninstalls Dopamine
.DESCRIPTION
	This PowerShell script uninstalls the audio player Dopamine.
.EXAMPLE
	PS> ./uninstall-dopamine
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling Dopamine, please wait..."

	& winget uninstall "Dopamine 2"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Dopamine, is it installed?" }

	& "$PSScriptRoot/_reply.ps1" "Dopamine is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}