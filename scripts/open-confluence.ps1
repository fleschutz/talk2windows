<#
.SYNOPSIS
	Opens the Confluence website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Confluence website.
#>

& "$PSScriptRoot/say.ps1" "Hold on."
& "$PSScriptRoot/open-browser.ps1" "https://confluence.ufainc.com:8443"
