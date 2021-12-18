<#
.SYNOPSIS
	Checks the earth (fun)
.DESCRIPTION
	This PowerShell script checks the earth and replies by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-earth
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/give-reply.ps1" "Earth still spins with 1040mph."
exit 0 # success
