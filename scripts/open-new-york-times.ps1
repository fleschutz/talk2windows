<#
.SYNOPSIS
	Opens New York Times 
.DESCRIPTION
	This PowerShell script launches the Web browser with NYTimes.com
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://www.nytimes.com/"
exit 0 # success
