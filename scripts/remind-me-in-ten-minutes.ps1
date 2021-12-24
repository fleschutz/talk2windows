<#
.SYNOPSIS
	Sets a reminder in 10 minutes
.DESCRIPTION
	This PowerShell script displays a reminder popup message in 10 minutes.
.EXAMPLE
	PS> ./remind-me-in-ten-minutes
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "OK, in 10."
	$Now = (Get-Date).AddMinutes(10)
	& "$PSScriptRoot/_set-reminder.ps1" "10 minutes have passed." "$Now"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
