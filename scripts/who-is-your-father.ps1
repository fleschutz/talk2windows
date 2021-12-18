<#
.SYNOPSIS
	Replies to "Who is your father?"
.DESCRIPTION
	This PowerShell script replies to 'Who is your father?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./who-is-your-father
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/give-reply.ps1" "Bill Gates."
exit 0 # success
