<#
.SYNOPSIS
	Launches Microsoft Sticky Notes
.DESCRIPTION
	This PowerShell script launches the Microsoft Sticky Notes application.
.EXAMPLE
	PS> ./open-sticky-notes
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$App = Get-AppxPackage -Name "*MicrosoftStickyNotes*"
	if ($App.Status -ne "Ok") { throw "Sticky Notes isn't installed yet." }
	Start-Process shell:appsFolder\$($App.PackageFamilyName)!App
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
