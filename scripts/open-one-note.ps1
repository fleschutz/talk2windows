<#
.SYNOPSIS
	Launches OneNote
.DESCRIPTION
	This PowerShell script launches the OneNote application.
#>

try {
	$App = Get-AppxPackage -Name "*OneNote*"
	if ($App.Status -ne "Ok") { throw "OneNote isn't installed yet." }
	Start-Process shell:appsFolder\$($App.PackageFamilyName)!microsoft.onenoteim
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
