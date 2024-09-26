<#
.SYNOPSIS
	Lists the installed apps
.DESCRIPTION
	This PowerShell script lists the installed apps in a table.
#>

& "$PSScriptRoot/say.ps1" "OK."
Get-AppxPackage | Out-Gridview -wait
