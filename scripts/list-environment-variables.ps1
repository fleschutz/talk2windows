<#
.SYNOPSIS
	Lists Environment Variables
.DESCRIPTION
	This PowerShell script lists all environment variables in a table.
#>

try {
	& "$PSScriptRoot/say.ps1" "OK."
	Get-ChildItem env: | Out-GridView -title "Environment Variables (sorted alphabetically)" -wait
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
