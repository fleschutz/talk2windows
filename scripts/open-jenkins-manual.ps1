<#
.SYNOPSIS
	Shows the Jenkins manual
.DESCRIPTION
	This PowerShell script launches the Web browser with the Jenkins manual.
.EXAMPLE
	PS> ./show-jenkins-manual
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.jenkins.io/doc/book/"
exit 0 # success
