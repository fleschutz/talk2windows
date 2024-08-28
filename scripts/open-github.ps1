<#
.SYNOPSIS
	Opens GitHub
.DESCRIPTION
	This PowerShell script launches the Web browser with the GitHub website.
#>

& "$PSScriptRoot/open-browser.ps1" "https://github.com"
& "$PSScriptRoot/_reply.ps1" "Your GitHub dashboard."
