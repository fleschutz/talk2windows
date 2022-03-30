<#
.SYNOPSIS
	Replies to "Say again"
.DESCRIPTION
	This PowerShell script replies to "Say again" by text-to-speech (TTS).
.EXAMPLE
	PS> ./say-again.ps1
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

function GetTempDir {
	if ("$env:TEMP" -ne "")	{ return "$env:TEMP" }
	if ("$env:TMP" -ne "")	{ return "$env:TMP" }
	if ($IsLinux) { return "/tmp" }
	return "C:\Temp"
}

try {
	$Path = "$(GetTempDir)/talk2windows_last_reply.txt"
	if (test-path "$Path" -pathType leaf) {
		$Reply = "I said: " + (Get-Content "$Path")
	} else {
		$Reply = "What?"
	}
	& "$PSScriptRoot/_reply.ps1" $Reply
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}