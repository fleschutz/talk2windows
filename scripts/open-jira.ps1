<#
.SYNOPSIS
	Opens the Jira website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Jira website.
.EXAMPLE
	PS> ./open-jira.ps1
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://ufainc.atlassian.net/jira/your-work"
exit 0 # success
