<#
.SYNOPSIS
	Opens Thunderbird
.DESCRIPTION
	This PowerShell script launches the Mozilla Thunderbird application.
#>

try {
	& "$PSScriptRoot/say.ps1" "Hold on."

	$app = Get-AppxPackage -Name MozillaThunderbird.MZLA
	if ($app.Status -ne "Ok") { throw "Can't open Mozilla Thunderbird, maybe it's not installed." }

	explorer.exe shell:appsFolder\$($app.PackageFamilyName)!App

	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
