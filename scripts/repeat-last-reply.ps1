<#
.SYNOPSIS
	Repeats the last reply
.DESCRIPTION
	This repeats the last reply by text-to-speech (TTS).
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
	if (test-path "$(GetTempDir)/talk2windows_last_reply.txt" -pathType leaf) {
		$Reply = "It was: "
		$Reply += Get-Content "$(GetTempDir)/last_reply_given.txt"
	} else {
		$Reply = "Sorry, I can't remember."
	}
	& "$PSScriptRoot/_reply.ps1" "$Reply"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
