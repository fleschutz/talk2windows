<#
.SYNOPSIS
	Opens the NetSuite portal
.DESCRIPTION
	This PowerShell script launches the Web browser with the NetSuite portal.
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.netsuite.com/portal/home.shtml"
exit 0 # success
