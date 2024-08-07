<#
.SYNOPSIS
	Opens the Jenkins manual
.DESCRIPTION
	This PowerShell script launches the Web browser with the Jenkins manual.
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.jenkins.io/doc/book/"
exit 0 # success
