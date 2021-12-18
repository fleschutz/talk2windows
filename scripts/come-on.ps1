<#
.SYNOPSIS
	Replies to "Come on"
.DESCRIPTION
	This PowerShell script replies to 'Come on' by text-to-speech (TTS).
.EXAMPLE
	PS> ./come-on
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "I'm sorry.", "I'm so sorry.", "Mea culpa!" | Get-Random
& "$PSScriptRoot/give-reply.ps1" "$Reply"
exit 0 # success
