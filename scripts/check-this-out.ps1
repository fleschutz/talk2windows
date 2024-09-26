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

$reply = "Wow!", "Awesome!" | Get-Random
& "$PSScriptRoot/say.ps1" $reply
