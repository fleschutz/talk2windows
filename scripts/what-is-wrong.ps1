<#
.SYNOPSIS
	Replies to "What's wrong?"
.DESCRIPTION
	This PowerShell script replies to "What's wrong?" by text-to-speech (TTS).
.EXAMPLE
	PS> ./what-is-wrong.ps1
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Nothing wrong here." | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
