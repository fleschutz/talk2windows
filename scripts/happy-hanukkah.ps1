<#
.SYNOPSIS
	Replies to "Happy Hanukkah"
.DESCRIPTION
	This PowerShell script replies to 'Happy Hanukkah' by text-to-speech (TTS).
.EXAMPLE
	PS> ./happy-hanukkah
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Happy Hanukkah to you too!" | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
