<#
.SYNOPSIS
	Replies to "Say something"
.DESCRIPTION
	This PowerShell script replies to "Say something" by text-to-speech (TTS).
.EXAMPLE
	PS> ./say-something
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "The quick brown fox jumps other the lazy dog."
exit 0 # success

