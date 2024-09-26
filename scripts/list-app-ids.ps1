<#
.SYNOPSIS
	Lists AppID's
.DESCRIPTION
	This PowerShell script lists the installed application identifiers in a table.
#>

& "$PSScriptRoot/say.ps1" "OK."
Get-StartApps | Out-GridView -wait
