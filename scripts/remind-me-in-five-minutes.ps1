<#
.SYNOPSIS
	Remind me in 5 minutes
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
	& "$PSScriptRoot/remind-me.ps1" "End of 5 minutes." "$Now"
	& "$PSScriptRoot/_reply.ps1" "OK, will remind you in 5 minutes."
	exit 0
} catch {
	write-error "⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
