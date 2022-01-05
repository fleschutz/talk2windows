<#
.SYNOPSIS
	Lists the installed apps
.DESCRIPTION
	This PowerShell script lists the installed apps in a table.
.EXAMPLE
	PS> ./list-installed-apps
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "OK."
Get-AppxPackage | Out-Gridview
exit 0 # success
