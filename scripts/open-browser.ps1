<#
.SYNOPSIS
	Opens the Web browser
.DESCRIPTION
	This PowerShell script launches the default Web browser with a given URL.
#>

param([string]$URL = "https://github.com/fleschutz/talk2windows")

Start-Process $URL
exit 0 # success
