<#
.SYNOPSIS
	Speaks German
.DESCRIPTION
	This PowerShell script speaks the given text with a German text-to-speech (TTS) voice.
.PARAMETER text
	Specifies the text to speak
.EXAMPLE
	PS> ./_speak-german Hallo
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$text = "")

try {
	$Voice = New-Object -ComObject SAPI.SPVoice
	foreach ($OtherVoice in $Voice.GetVoices()) {
		if ($OtherVoice.GetDescription() -like "*- German*") { 
			$Voice.Voice = $OtherVoice
			[void]$Voice.Speak($text)
			exit 0 # success
		}
	}
	throw "No German text-to-speech voice found - please install one"
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
