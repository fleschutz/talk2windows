<#
.SYNOPSIS
	Sets a reminder in 20 minutes
.DESCRIPTION
	This PowerShell script displays a reminder popup message in 20 minutes.
.EXAMPLE
	PS> ./remind-me-in-twenty-minutes
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/_reply.ps1" "OK, in 20."
	$Now = (Get-Date).AddMinutes(20)
	& "$PSScriptRoot/_set-reminder.ps1" "20 minutes have passed." "$Now"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
