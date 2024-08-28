<#
.SYNOPSIS
	Opens the Jira website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Jira web portal.
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://ufainc.atlassian.net/jira/your-work"
exit 0 # success
