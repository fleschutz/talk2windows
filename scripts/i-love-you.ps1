<#
.SYNOPSIS
	Replies to "I love you"
.DESCRIPTION
	This PowerShell script replies to 'I love you' by text-to-speech (TTS).
.EXAMPLE
	PS> ./i-love-you
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "I'm so happy.", "I love it when you say things like that.", "Thank you for loving me." | Get-Random
& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
