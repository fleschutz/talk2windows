<#
.SYNOPSIS
	Replies to "What's up?"
.DESCRIPTION
	This PowerShell script replies to 'What's up?' by text-to-speech (TTS).
#>

$reply = "Hey! How's it going?", "What's happening?", "How goes it?", "I'm fine, how are you?", "Can't complain.", "Not much. How about you?", "Looking forward to the weekend.", "Just busy, busy! What about you?" | Get-Random
& "$PSScriptRoot/say.ps1" $reply
