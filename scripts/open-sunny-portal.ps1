<#
.SYNOPSIS
	Opens Sunny Portal
.DESCRIPTION
	This PowerShell script launches the Web browser with the SMA Sunny Portal website.
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://www.sunnyportal.com/FixedPages/Dashboard.aspx"
exit 0 # success
