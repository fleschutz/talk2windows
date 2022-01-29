<#
.SYNOPSIS
	Lists Environment Variables
.DESCRIPTION
	This PowerShell script lists all environment variables in a table.
.EXAMPLE
	PS> ./list-environment-variables
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "OK."
	Get-ChildItem env: | Out-GridView -title "Environment Variables (sorted alphabetically)" -wait
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
