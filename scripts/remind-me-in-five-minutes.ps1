<#
.SYNOPSIS
	Set a reminder in 5 minutes
.DESCRIPTION
	This PowerShell script displays a reminder popup message in 5 minutes.
.EXAMPLE
	PS> ./remind-me-in-five-minutes
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$Now = (Get-Date).AddMinutes(5)
	& "$PSScriptRoot/_remind-me.ps1" "5 minutes have passed." "$Now"
	& "$PSScriptRoot/_reply.ps1" "OK, in 5."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
