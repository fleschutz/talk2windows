<#
.SYNOPSIS
	Repeat Last Reply
.DESCRIPTION
	This PowerShell script repeats the last reply by text-to-speech (TTS).
.EXAMPLE
	PS> ./repeat-last-reply
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
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
		$Reply = "It was: " + (Get-Content "$Path")
	} else {
		$Reply = "Sorry, I can't remember."
	}
	& "$PSScriptRoot/_reply.ps1" "$Reply"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
