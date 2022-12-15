<#
.SYNOPSIS
	Gives a reply 
.DESCRIPTION
	This PowerShell script replies by text-to-speech (TTS) in English.
.PARAMETER text
	Specifies the text to speak
.EXAMPLE
	PS> ./_reply "Hello World"
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$text = "")

$TTS = New-Object -ComObject SAPI.SPVoice
foreach ($Voice in $TTS.GetVoices()) { if ($Voice.GetDescription() -like "*- English*") { $TTS.Voice = $Voice }	}
[void]$TTS.Speak($text)

if ("$env:TEMP" -ne "")	{	$TempDir = "$env:TEMP"
} elseif ("$env:TMP" -ne "") {	$TempDir = "$env:TMP"
} elseif ($IsLinux) {		$TempDir = "/tmp"
} else {			$TempDir = "C:\Temp" }
"$text" > "$TempDir/talk2windows_last_reply.txt"
exit 0
