<#
.SYNOPSIS
	Opens Google Fonts
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Fonts.
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://fonts.google.com"
exit 0 # success
