<#
.SYNOPSIS
	Replies to 'bye bye'
.DESCRIPTION
	This PowerShell script says a reply to 'bye bye' by text-to-speech (TTS).
.EXAMPLE
	PS> ./bye-bye
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Good bye.", "See you.", "Bye bye." | Get-Random

& "$PSScriptRoot/give-reply.ps1" "$Reply"
exit 0 # success
