<#
.SYNOPSIS
	Closes the Chrome browser
.DESCRIPTION
	This PowerShell script closes the Google Chrome Web browser gracefully.
#>

& "$PSScriptRoot/close-program.ps1" "Google Chrome" "chrome" "chrome"
exit 0 # success
