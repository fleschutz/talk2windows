<#
.SYNOPSIS
	Replies to 'how do you do?'
.DESCRIPTION
	This PowerShell script says a reply to "how do you do?" by text-to-speech (TTS).
#>

$reply = "I'm fine, thanks. How are you?", "I'm doing well.", "Great, thank you. How are you?", "Good, thanks, and you?", "Fine, thanks. How are you?" | Get-Random
& "$PSScriptRoot/say.ps1" $reply
