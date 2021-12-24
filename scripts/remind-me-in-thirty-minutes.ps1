<#
.SYNOPSIS
	Sets a reminder in 30 minutes
.DESCRIPTION
	This PowerShell script displays a reminder popup message in 30 minutes.
.EXAMPLE
	PS> ./remind-me-in-thirty-minutes
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "OK, in 30."
	$Now = (Get-Date).AddMinutes(30)
	& "$PSScriptRoot/_set-reminder.ps1" "30 minutes have passed." "$Now"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
