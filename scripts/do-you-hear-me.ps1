<#
.SYNOPSIS
	Replies to "Do you hear me?"
.DESCRIPTION
	This PowerShell script replies to 'Do you hear me?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./do-you-hear-me
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Loud and clear!"
exit 0 # success
