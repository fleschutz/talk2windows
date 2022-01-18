<#
.SYNOPSIS
	Lists AppID's
.DESCRIPTION
	This PowerShell script lists the installed application identifiers in a table.
.EXAMPLE
	PS> ./list-app-ids
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "OK."
Get-StartApps | Out-GridView -wait
exit 0 # success
