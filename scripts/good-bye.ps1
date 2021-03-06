<#
.SYNOPSIS
	Replies to 'good bye'
.DESCRIPTION
	This PowerShell script says a reply to 'good bye' by text-to-speech (TTS).
.EXAMPLE
	PS> ./good-bye
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Good bye.", "See you.", "Bye bye." | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
