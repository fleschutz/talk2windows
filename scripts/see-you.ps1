<#
.SYNOPSIS
	Answers to 'see you'
.DESCRIPTION
	This PowerShell script says a reply to "see you" by text-to-speech (TTS).
#>

$reply = "Bye!", "Bye bye!", "Good bye!", "See you!", "Cheers!", "So long!", "Take care!" | Get-Random
& "$PSScriptRoot/say.ps1" $reply
