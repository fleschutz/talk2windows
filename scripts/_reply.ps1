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

function GetTempDir {
	if ("$env:TEMP" -ne "")	{ return "$env:TEMP" }
	if ("$env:TMP" -ne "")	{ return "$env:TMP" }
	if ($IsLinux) { return "/tmp" }
	return "C:\Temp"
}

try {
	$Voice = New-Object -ComObject SAPI.SPVoice
	foreach ($OtherVoice in $Voice.GetVoices()) {
		if ($OtherVoice.GetDescription() -like "*- English*") { $Voice.Voice = $OtherVoice }
	}
	[void]$Voice.Speak($text)
	"$text" > "$(GetTempDir)/talk2windows_last_reply.txt"
	exit 0 # success
} catch {
	"ERROR: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}
