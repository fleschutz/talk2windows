<#
.SYNOPSIS
	Shows the Bash manual
.DESCRIPTION
	This PowerShell script launches the Web browser with the Bash manual.
.EXAMPLE
	PS> ./show-bash-manual
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.gnu.org/software/bash/manual/bash.html"
exit 0 # success
