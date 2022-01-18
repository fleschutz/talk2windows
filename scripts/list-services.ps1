<#
.SYNOPSIS
	Lists the Sservices
.DESCRIPTION
	This PowerShell script lists all local computer services in a table.
.EXAMPLE
	PS> ./list-services
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	Get-Service | Out-GridView -wait
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
