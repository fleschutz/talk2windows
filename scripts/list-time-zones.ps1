<#
.SYNOPSIS
	Lists the Time Zones
.DESCRIPTION
	This PowerShell script lists the available time zones in a table.
#>

& "$PSScriptRoot/say.ps1" "OK."
Get-Timezone -ListAvailable | Out-GridView -wait
