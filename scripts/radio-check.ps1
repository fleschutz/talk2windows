<#
.SYNOPSIS
	Replies to "Radio check"
.DESCRIPTION
	This PowerShell script replies to 'Radio check' by text-to-speech (TTS).
#>

$reply = "Read you loud and clear.", "Read you 5 by 5." | Get-Random

& "$PSScriptRoot/_reply.ps1" $reply
exit 0 # success