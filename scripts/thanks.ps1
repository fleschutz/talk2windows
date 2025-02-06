<#
.SYNOPSIS
	Replies to 'thanks'
.DESCRIPTION
	This PowerShell script replies to 'thanks' by text-to-speech (TTS).
#>

$reply = "You're welcome.","That's okay.","That's fine.","My pleasure.","Pleasure is mine.","Glad to help.","Any time." | Get-Random
& "$PSScriptRoot/say.ps1" $reply
