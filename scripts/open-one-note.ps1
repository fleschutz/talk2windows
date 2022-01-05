<#
.SYNOPSIS
	Launches OneNote
.DESCRIPTION
	This PowerShell script launches the OneNote application.
.EXAMPLE
	PS> ./open-one-note
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$App = Get-AppxPackage -Name "*OneNote*"
	if ($App.Status -ne "Ok") { throw "OneNote isn't installed yet." }
	Start-Process shell:appsFolder\$($App.PackageFamilyName)!microsoft.onenoteim
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
