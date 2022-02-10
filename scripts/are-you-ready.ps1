<#
.SYNOPSIS
	Replies to: 'Are you ready?'
.DESCRIPTION
	This PowerShell script replies to 'Are you ready?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./are-you-ready
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Always.", "Sure.", "Ready when you are!", "I was born ready." | Get-Random
& "$PSScriptRoot/_reply.ps1" $Reply
exit 0 # success
