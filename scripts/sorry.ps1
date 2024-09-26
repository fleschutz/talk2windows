<#
.SYNOPSIS
	Replies to "Sorry?"
.DESCRIPTION
	This PowerShell script replies to 'Sorry?' by text-to-speech (TTS).
#>

function GetTempDir {
	if ("$env:TEMP" -ne "")	{ return "$env:TEMP" }
	if ("$env:TMP" -ne "")	{ return "$env:TMP" }
	if ($IsLinux) { return "/tmp" }
	return "C:\Temp"
}

try {
	$path = "$(GetTempDir)/talk2windows.txt"
	if (Test-Path "$path" -pathType leaf) {
		$reply = "I said: " + (Get-Content "$path")
	} else {
		$reply = "Never mind."
	}
} catch { $reply = "Sorry: $($Error[0])" }

& "$PSScriptRoot/say.ps1" $reply
