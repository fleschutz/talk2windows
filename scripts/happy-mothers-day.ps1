<#
.SYNOPSIS
	Replies to "Happy Mother's day"
.DESCRIPTION
	This PowerShell script replies to 'Happy Mother's day' by text-to-speech (TTS).
.EXAMPLE
	PS> ./happy-mothers-day
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Happy Mother's day to you too!" | Get-Random

& "$PSScriptRoot/give-reply.ps1" "$Reply"
exit 0 # success
