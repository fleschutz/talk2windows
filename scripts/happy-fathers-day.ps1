<#
.SYNOPSIS
	Replies to "Happy Father's day"
.DESCRIPTION
	This PowerShell script replies to 'Happy Father's day' by text-to-speech (TTS).
.EXAMPLE
	PS> ./happy-fathers-day
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Happy Father's day to you too!" | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
