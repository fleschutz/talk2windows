<#
.SYNOPSIS
	Say the current year 
.DESCRIPTION
	This PowerShell script speaks the current year by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-year
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$Year = (Get-Date).Year

	& "$PSScriptRoot/give-reply.ps1" "It's $Year."
	exit 0 # success
} catch {
	"⚠️ Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}
