<#
.SYNOPSIS
	Launches OneCalendar
.DESCRIPTION
	This PowerShell script launches the OneCalendar application.
.EXAMPLE
	PS> ./open-one-calendar
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$App = Get-AppxPackage -Name "*OneCalendar*"
	if ($App.Status -ne "Ok") { throw "OneCalendar isn't installed yet." }
	Start-Process shell:appsFolder\$($App.PackageFamilyName)!App
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
