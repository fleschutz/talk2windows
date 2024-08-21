<#
.SYNOPSIS
	Uninstalls IrfanView
.DESCRIPTION
	This PowerShell script uninstalls IrfanView from the local computer.
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling IrfanView, hold on..."

	& winget uninstall --id 9PJZ3BTL5PV6
	if ($lastExitCode -ne "0") { throw "Can't uninstall IrfanView, maybe it's not installed." }

	& "$PSScriptRoot/_reply.ps1" "IrfanView is gone."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
