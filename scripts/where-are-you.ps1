<#
.SYNOPSIS
	Replies to "Where are you?"
.DESCRIPTION
	This PowerShell script replies to 'Where are you?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./where-are-you
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "I'm here.","At your side.","Next to you." | Get-Random
& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
