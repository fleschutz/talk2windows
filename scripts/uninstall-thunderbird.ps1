<#
.SYNOPSIS
	Uninstalls Thunderbird
.DESCRIPTION
	This PowerShell script uninstalls Mozilla Thunderbird from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling Thunderbird, hold on..."

	& winget uninstall --id 9PM5VM1S3VMQ
	if ($lastExitCode -ne "0") { throw "Can't uninstall Mozilla Thunderbird, maybe it's not installed." }

	& "$PSScriptRoot/say.ps1" "Mozilla Thunderbird is uninstalled now."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
