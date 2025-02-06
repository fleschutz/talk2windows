<#
.SYNOPSIS
	Replies to "What's up?"
.DESCRIPTION
	This PowerShell script replies to 'What's up?' by text-to-speech (TTS).
#>

$reply = "The usual. What’s up with you?", "Hey! How's it going?", "What's happening?", "How goes it?", "I'm fine, how are you?", "Can't complain.", "Not much. How about you?", "Ready for the weekend. And you?", "A bit stressed. And you?" | Get-Random
& "$PSScriptRoot/say.ps1" $reply
