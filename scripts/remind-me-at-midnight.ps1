<#
.SYNOPSIS
	Reminds when it's midnight
.DESCRIPTION
	This PowerShell script displays a reminder popup message when it's midnight.
.EXAMPLE
	PS> ./remind-me-at-midnight
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$Midnight = Get-Date -Hour 0 -Minute 0 -Second 0

	& "$PSScriptRoot/remind-me.ps1" "It's midnight, now." "$Noon"
	& "$PSScriptRoot/_reply.ps1" "OK, will do."
	exit 0
} catch {
	write-error "⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
