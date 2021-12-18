<#
.SYNOPSIS
	Remind me in 10 minutes
.DESCRIPTION
	This PowerShell script displays a reminder popup message in 10 minutes.
.EXAMPLE
	PS> ./remind-me-in-ten-minutes
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$Now = (Get-Date).AddMinutes(10)
	& "$PSScriptRoot/remind-me.ps1" "End of 10 minutes" "$Now"
	& "$PSScriptRoot/give-reply.ps1" "Will remind you in 10 minutes."
	exit 0
} catch {
	write-error "⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
