<#
.SYNOPSIS
	Opens Google Chrome
.DESCRIPTION
	This PowerShell script launches the Google Chrome Web browser.
#>

param([string]$URL = "https://www.google.com/chrome/")

try {
	Start-Process chrome.exe "$URL"
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
