<#
.SYNOPSIS
	Opens Jenkins Kaufbeuren
.DESCRIPTION
	This PowerShell script launches the Web browser with Jenkins Kaufbeuren.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://jenkins.ad.atcsim.de/jenkins/"
