<#
.SYNOPSIS
	Replies to "Happy St.Patrick's day"
.DESCRIPTION
	This PowerShell script replies to 'Happy St.Patrick's day' by text-to-speech (TTS).
.EXAMPLE
	PS> ./happy-saint-patricks-day
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Happy St.Patrick's day to you too!" | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
