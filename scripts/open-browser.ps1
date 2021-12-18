<#
.SYNOPSIS
	Opens the Web browser
.DESCRIPTION
	This PowerShell script launches the default Web browser, optional with a given URL.
.PARAMETER URL
	Specifies the URL
.EXAMPLE
	PS> ./open-browser
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$URL = "https://github.com/fleschutz/talk2windows")

Start-Process $URL
exit 0 # success
