<#
.SYNOPSIS
	Reminds when it's noon
.DESCRIPTION
	This PowerShell script displays a reminder popup message when it's noon.
.EXAMPLE
	PS> ./remind-me-at-noon
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$Noon = Get-Date -Hour 12 -Minute 0 -Second 0

	& "$PSScriptRoot/remind-me.ps1" "It's noon, now." "$Noon"
	& "$PSScriptRoot/give-reply.ps1" "OK, will do."
	exit 0
} catch {
	write-error "⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
