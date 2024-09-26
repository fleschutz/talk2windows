<#
.SYNOPSIS
	Opens a TOWER ticket by number
.DESCRIPTION
	This PowerShell script calculates the given expression and speaks the result by text-to-speech (TTS).
#>

param([string]$part1 = "", [string]$part2 = "", [string]$part3 = "", [string]$part4 = "", [string]$part5 = "", [string]$part6 = "", [string]$part7 = "")

try {
	$JiraNumber = "$part1 $part2 $part3 $part4 $part5 $part6 $part7"

	& "$PSScriptRoot/open-browser.ps1" "https://ufainc.atlassian.net/browse/TOWER-$JiraNumber"
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
