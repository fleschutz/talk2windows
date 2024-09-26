<#
.SYNOPSIS
	Replies to "Say again?"
.DESCRIPTION
	This PowerShell script replies to "Say again?" by text-to-speech (TTS).
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
		$reply = "What?"
	}
} catch {
	$reply = "Sorry: $($Error[0])"
}
& "$PSScriptRoot/say.ps1" $reply
