<#
.SYNOPSIS
	Replies to 'how do you do?'
.DESCRIPTION
	This PowerShell script says a reply to "how do you do?" by text-to-speech (TTS).
.EXAMPLE
	PS> ./how-do-you-do
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "I'm fine, thanks. How are you?", "I'm doing well.", "Great, thank you. How are you?", "Good, thanks, and you?", "Fine, thanks. How are you?" | Get-Random

& "$PSScriptRoot/give-reply.ps1" "$Reply"
exit 0 # success
