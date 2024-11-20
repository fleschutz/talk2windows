<#
.SYNOPSIS
	Opens Google Scholar
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Scholar.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://scholar.google.com/"
