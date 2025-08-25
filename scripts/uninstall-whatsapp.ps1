<#
.SYNOPSIS
	Uninstalls WhatsApp
.DESCRIPTION
	This PowerShell script uninstalls WhatsApp from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling WhatsApp, hold on..."

	& winget uninstall --id 9NKSQGP7F2NH
	if ($lastExitCode -ne "0") { throw "Can't uninstall WhatsApp, is it installed?" }

	& "$PSScriptRoot/say.ps1" "WhatsApp is uninstalled now."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
