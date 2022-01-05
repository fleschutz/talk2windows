<#
.SYNOPSIS
	Lists the Time Zones
.DESCRIPTION
	This PowerShell script lists the available time zones in a table.
.EXAMPLE
	PS> ./list-time-zones
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "OK."
Get-Timezone -ListAvailable | Out-GridView
exit 0 # success
