<#
.SYNOPSIS
	Opens Google Blogger
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Blogger.
#>

& "$PSScriptRoot/say.ps1" "Hold on..."
& "$PSScriptRoot/open-browser.ps1" "https://www.blogger.com"
