<#
.SYNOPSIS
	Replies to "That's perfect"
.DESCRIPTION
	This PowerShell script replies to 'That's perfect' by text-to-speech (TTS).
.EXAMPLE
	PS> ./that-is-perfect
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Thank you.","Glad to help." | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
