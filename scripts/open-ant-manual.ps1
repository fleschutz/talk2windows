<#
.SYNOPSIS
	Shows the Ant manual
.DESCRIPTION
	This PowerShell script launches the Web browser with the Apache Ant manual.
.EXAMPLE
	PS> ./show-ant-manual
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://ant.apache.org/manual/index.html"
exit 0 # success
