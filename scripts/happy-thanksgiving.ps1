<#
.SYNOPSIS
	Replies to "Happy Thanksgiving"
.DESCRIPTION
	This PowerShell script replies to 'Happy Thanksgiving' by text-to-speech (TTS).
.EXAMPLE
	PS> ./happy-thanksgiving
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Happy Thanksgiving to you too!" | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
