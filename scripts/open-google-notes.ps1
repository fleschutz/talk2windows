<#
.SYNOPSIS
	Opens Google Notes
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Notes.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://keep.google.com/"
