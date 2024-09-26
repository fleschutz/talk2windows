<#
.SYNOPSIS
	Opens New York Times 
.DESCRIPTION
	This PowerShell script launches the Web browser with NYTimes.com
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://www.nytimes.com/"
