<#
.SYNOPSIS
	Replies to "What's up?"
.DESCRIPTION
	This PowerShell script replies to 'What's up?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./what-is-up.ps1
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

$Reply = "Hey! How's it going?", "What's happening?", "How goes it?", "I'm fine, how are you?", "Ah, can't complain.", "Not much. How about you?", "Looking forward to the weekend.", "Just busy, busy! What about you?" | Get-Random
& "$PSScriptRoot/_reply.ps1" $Reply
exit 0 # success
