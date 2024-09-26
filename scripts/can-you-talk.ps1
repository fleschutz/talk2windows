<#
.SYNOPSIS
	Replies to "Can you talk?"
.DESCRIPTION
	This PowerShell script replies to 'Can you talk?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./can-you-talk
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/say.ps1" "Sure, just begin any sentence with 'Windows'."
