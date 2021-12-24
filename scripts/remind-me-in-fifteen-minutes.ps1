<#
.SYNOPSIS
	Set a reminder in 15 minutes
.DESCRIPTION
	This PowerShell script displays a reminder popup message in 15 minutes.
.EXAMPLE
	PS> ./remind-me-in-fifteen-minutes
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "OK, in 15."
	$Now = (Get-Date).AddMinutes(15)
	& "$PSScriptRoot/_set-reminder.ps1" "15 minutes have passed." "$Now"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
