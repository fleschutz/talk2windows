<#
.SYNOPSIS
	Opens Google Notes
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Notes.
#>

& "$PSScriptRoot/open-browser.ps1" "https://keep.google.com/"
& "$PSScriptRoot/_reply.ps1" "Your notes."
exit 0
