<#
.SYNOPSIS
	Uninstalls Greenshot
.DESCRIPTION
	This PowerShell script uninstalls Greenshot from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling Greenshot, hold on..."

	& winget uninstall --id 9N8Z6RQX8LV8
	if ($lastExitCode -ne "0") { throw "Can't uninstall Greenshot, maybe it's not installed." }

	& "$PSScriptRoot/say.ps1" "Greenshot is gone now."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
