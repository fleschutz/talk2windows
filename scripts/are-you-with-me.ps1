<#
.SYNOPSIS
	Replies to "Are you with me?"
.DESCRIPTION
	This PowerShell script replies to 'Are you with me?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./are-you-with-me
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$reply = "Yes.", "Sure.", "Yes, sure.", "Always." | Get-Random
& "$PSScriptRoot/say.ps1" $reply
