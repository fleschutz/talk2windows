<#
.SYNOPSIS
	Replies to "Happy Ramadan"
.DESCRIPTION
	This PowerShell script replies to 'Happy Ramadan' by text-to-speech (TTS).
.EXAMPLE
	PS> ./happy-ramadan
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Happy Ramadan to you too!" | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
