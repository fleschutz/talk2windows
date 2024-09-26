<#
.SYNOPSIS
	Replies to "Give me five"
.DESCRIPTION
	This PowerShell script replies to 'Give me five' by text-to-speech (TTS).
#>

$reply = "Thanks!", "Hi five.", "Hi five to all of yours.", "Four plus one.", "Three plus two." | Get-Random
& "$PSScriptRoot/say.ps1" $reply
