<#
.SYNOPSIS
	Lists the User Groups
.DESCRIPTION
	This PowerShell script lists the user groups on the local computer in a table.
#>

try {
	& "$PSScriptRoot/say.ps1" "OK."
	Get-LocalGroup | Out-GridView -wait
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
