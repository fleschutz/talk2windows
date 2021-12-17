<#
.SYNOPSIS
	Shows the MSBuild manual
.DESCRIPTION
	This script launches the Web browser with the MSBuild manual.
.EXAMPLE
	PS> ./show-msbuild-manual
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_launch-browser.ps1" "https://docs.microsoft.com/de-de/visualstudio/msbuild/msbuild"
exit 0 # success
