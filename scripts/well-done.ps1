<#
.SYNOPSIS
	Replies to "Well done"
.DESCRIPTION
	This PowerShell script replies to 'Well done' by text-to-speech (TTS).
.EXAMPLE
	PS> ./well-done
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Thank you.", "Glad to help.","It's my pleasure.","Pleasure is mine." | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
