<#
.SYNOPSIS
	Replies to "Where are you?"
.DESCRIPTION
	This PowerShell script replies to 'Where are you?' by text-to-speech (TTS).
#>

$reply = "I'm here.","Here.","At your side.","Next to you.","In your computer." | Get-Random
& "$PSScriptRoot/say.ps1" $reply
exit 0 # success
