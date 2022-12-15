<#
.SYNOPSIS
	Replies to "Oh my gosh"
.DESCRIPTION
	This PowerShell script replies to 'Oh my gosh' by text-to-speech (TTS).
.EXAMPLE
	PS> ./oh-my-gosh
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "What's up?"
exit 0 # success
