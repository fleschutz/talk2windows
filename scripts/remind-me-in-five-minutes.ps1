<#
.SYNOPSIS
	Set a reminder in 5 minutes
.DESCRIPTION
	This PowerShell script displays a reminder popup message in 5 minutes.
.EXAMPLE
	PS> ./remind-me-in-five-minutes
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "OK, in 5."
	$Now = (Get-Date).AddMinutes(5)
	& "$PSScriptRoot/_set-reminder.ps1" "5 minutes have passed." "$Now"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
