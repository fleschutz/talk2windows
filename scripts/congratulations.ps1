<#
.SYNOPSIS
	Replies to "Congratulations!"
.DESCRIPTION
	This PowerShell script replies to 'Congratulations!' by text-to-speech (TTS).
.EXAMPLE
	PS> ./congratulations
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/give-reply.ps1" "Thank you."
exit 0 # success
