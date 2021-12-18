<#
.SYNOPSIS
	Replies to "Happy Holidays"
.DESCRIPTION
	This PowerShell script replies to 'Happy Holidays' by text-to-speech (TTS).
.EXAMPLE
	PS> ./happy-holidays
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Happy Holidays to you too!" | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
