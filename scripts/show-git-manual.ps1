<#
.SYNOPSIS
	Shows the Git manual
.DESCRIPTION
	This script launches the Web browser with the Git manual.
.EXAMPLE
	PS> ./show-git-manual
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_launch-browser.ps1" "https://git-scm.com/docs/user-manual"
exit 0 # success
