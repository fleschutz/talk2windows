<#
.SYNOPSIS
	Lists the User Groups
.DESCRIPTION
	This PowerShell script lists the user groups on the local computer in a table.
.EXAMPLE
	PS> ./list-user-groups
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	Get-LocalGroup | Out-GridView
	sleep 600
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
