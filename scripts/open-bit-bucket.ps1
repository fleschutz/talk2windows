<#
.SYNOPSIS
	Opens Bitbucket
.DESCRIPTION
	This PowerShell script launches the Web browser with the Bitbucket website.
#>

& "$PSScriptRoot/say.ps1" "Hold on."
& "$PSScriptRoot/open-browser.ps1" "https://bitbucket.org"

