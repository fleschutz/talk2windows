<#
.SYNOPSIS
	Replies to "Happy Valentine's day"
.DESCRIPTION
	This PowerShell script replies to 'Happy Valentine's day' by text-to-speech (TTS).
.EXAMPLE
	PS> ./happy-valentines-day
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Happy Valentine's day to you too!" | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
