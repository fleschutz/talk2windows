<#
.SYNOPSIS
	Launches CrystalDiskMark
.DESCRIPTION
	This PowerShell script launches the CrystalDiskMark application.
#>

try {
	$App = Get-AppxPackage -Name "*CrystalDiskMark*"
	if ($App.Status -ne "Ok") { throw "CrystalDiskMark isn't installed yet." }
	Start-Process shell:appsFolder\$($App.PackageFamilyName)!CrystalDiskMarkShizukuEdition
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
