<#
.SYNOPSIS
	Uninstalls IrfanView
.DESCRIPTION
	This PowerShell script uninstalls IrfanView from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling IrfanView, hold on..."

	& winget uninstall --id 9PJZ3BTL5PV6
	if ($lastExitCode -ne "0") { throw "Can't uninstall IrfanView, maybe it's not installed." }

	& "$PSScriptRoot/say.ps1" "IrfanView is gone now."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
