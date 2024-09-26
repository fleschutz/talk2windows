<#
.SYNOPSIS
	Repeats the last reply
.DESCRIPTION
	This PowerShell script repeats the last reply by text-to-speech (TTS).
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
		$reply = "It was: " + (Get-Content "$path")
	} else {
		$reply = "Sorry, I can't remember."
	}
	& "$PSScriptRoot/say.ps1" $reply
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
