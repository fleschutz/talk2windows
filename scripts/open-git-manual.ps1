<#
.SYNOPSIS
	Opens the Git manual
.DESCRIPTION
	This PowerShell script launches the Web browser with the Git manual.
.EXAMPLE
	PS> ./open-git-manual
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://git-scm.com/docs/user-manual"
exit 0 # success
