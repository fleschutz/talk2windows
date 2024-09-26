<#
.SYNOPSIS
	Replies in the given Language
.DESCRIPTION
	This PowerShell script speaks the given text with a text-to-speech (TTS) voice in the given language.
#>

param([string]$Language = "", [string]$Text = "")

function GetTempDir {
	if ("$env:TEMP" -ne "")	{ return "$env:TEMP" }
	if ("$env:TMP" -ne "")	{ return "$env:TMP" }
	if ($IsLinux) { return "/tmp" }
	return "C:\Temp"
}

try {
	$Voice = New-Object -ComObject SAPI.SPVoice
	foreach ($OtherVoice in $Voice.GetVoices()) {
		if ($OtherVoice.GetDescription() -like "*- $($Language)*") { 
			$Voice.Voice = $OtherVoice
			[void]$Voice.Speak($text)
			"$text" > "$(GetTempDir)/talk2windows_last_reply.txt"
			exit 0 # success
		}
	}
	throw "No $Language text-to-speech voice found - please install one"
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
