<#
.SYNOPSIS
	Opens NetSuite
.DESCRIPTION
	This PowerShell script launches the Web browser with the NetSuite portal.
#>

& "$PSScriptRoot/_reply.ps1" "Hold on."
& "$PSScriptRoot/open-browser.ps1" "https://www.netsuite.com/portal/home.shtml"
