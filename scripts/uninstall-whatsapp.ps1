<#
.SYNOPSIS
	Uninstalls WhatsApp
.DESCRIPTION
	This PowerShell script uninstalls WhatsApp from the local computer.
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling WhatsApp, please wait..."

	& winget uninstall --id 9NKSQGP7F2NH
	if ($lastExitCode -ne "0") { throw "Can't uninstall WhatsApp, is it installed?" }

	& "$PSScriptRoot/_reply.ps1" "WhatsApp is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
