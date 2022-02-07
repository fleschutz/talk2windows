<#
.SYNOPSIS
	Replies to "Check this out"
.DESCRIPTION
	This PowerShell script replies to 'Check this out' by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-this-out
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Wow!", "Awesome!" | Get-Random

& "$PSScriptRoot/_reply.ps1" $Reply
exit 0 # success
