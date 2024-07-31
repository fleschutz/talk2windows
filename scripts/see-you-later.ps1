<#
.SYNOPSIS
	Answers to 'see you later'
.DESCRIPTION
	This PowerShell script says a reply to "see you later" by text-to-speech (TTS).
#>

$reply = "Bye!", "Bye bye!", "Good bye!", "See you!", "See ya!", "Cheers!", "So long!", "Take care!" | Get-Random

& "$PSScriptRoot/_reply.ps1" $reply
exit 0 # success
