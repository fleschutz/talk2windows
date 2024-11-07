<#
.SYNOPSIS
	Opens a TOWER ticket by number
.DESCRIPTION
	This PowerShell script calculates the given expression and speaks the result by text-to-speech (TTS).
#>

param([string]$JiraNumber = "")

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://ufainc.atlassian.net/browse/TOWER-$JiraNumber"
