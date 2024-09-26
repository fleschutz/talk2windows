<#
.SYNOPSIS
	Lists the installed Voices
.DESCRIPTION
	This PowerShell script lists the installed text-to-speech (TTS) voices in a table.
#>

#Requires -Version 2.0

try {
	& "$PSScriptRoot/say.ps1" "OK."
	Add-Type -AssemblyName System.Speech
	$Synth = New-Object System.Speech.Synthesis.SpeechSynthesizer
	$Synth.GetInstalledVoices() | 
		Select-Object -ExpandProperty VoiceInfo | 
		Select-Object -Property Name, Culture, Gender, Age | Out-GridView -wait
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
