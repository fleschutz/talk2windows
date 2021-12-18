<#
.SYNOPSIS
	Replies to "Happy Birthday"
.DESCRIPTION
	This PowerShell script replies to 'Happy Birthday' by text-to-speech (TTS).
.EXAMPLE
	PS> ./happy-birthday
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/give-reply.ps1" "Thank you very much. My birthday is today?"
exit 0 # success
