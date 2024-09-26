<#
.SYNOPSIS
	Replies to "Can you hear me?"
.DESCRIPTION
	This PowerShell script replies to 'Can you hear me?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./can-you-hear-me
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/say.ps1" "Loud and clear!"
