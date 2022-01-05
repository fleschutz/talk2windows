<#
.SYNOPSIS
	Launches 9 ZIP
.DESCRIPTION
	This PowerShell script launches the 9 ZIP application.
.EXAMPLE
	PS> ./open-nine-zip
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$App = Get-AppxPackage -Name "*9zip*"
	if ($App.Status -ne "Ok") { throw "9 ZIP isn't installed yet." }
	Start-Process shell:appsFolder\$($App.PackageFamilyName)!App
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
