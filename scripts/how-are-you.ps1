<#
.SYNOPSIS
	Replies to "How are you?"
.DESCRIPTION
	This PowerShell script replies to "How are you?" by text-to-speech (TTS).
.EXAMPLE
	PS> ./how-are-you.ps1
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "I'm fine. How are you?", "Great, thank you. How are you?", "Good, thanks, and you?", "Fine, thanks. How are you?" | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
