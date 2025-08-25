<#
.SYNOPSIS
	Uninstalls Rufus
.DESCRIPTION
	This PowerShell script uninstalls Rufus from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling Rufus, hold on..."

	& winget uninstall --id 9PC3H3V7Q9CH
	if ($lastExitCode -ne "0") { throw "Can't uninstall Rufus, maybe it's not installed." }

	& "$PSScriptRoot/say.ps1" "Rufus is gone."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
