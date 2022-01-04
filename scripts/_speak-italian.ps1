<#
.SYNOPSIS
	Speaks Italian
.DESCRIPTION
	This script speaks the given text with an Italian text-to-speech (TTS) voice.
.PARAMETER text
	Specifies the text to speak
.EXAMPLE
	PS> ./_speak-italian Ciao
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$text = "")

try {
	$Voice = New-Object -ComObject SAPI.SPVoice
	foreach ($OtherVoice in $Voice.GetVoices()) {
		if ($OtherVoice.GetDescription() -like "*- Italian*") {
			$Voice.Voice = $OtherVoice
			[void]$Voice.Speak($text)
			exit 0 # success
		}
	}
	throw "No Italian text-to-speech voice found - please install one."
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
