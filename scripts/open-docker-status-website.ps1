<#
.SYNOPSIS
	Opens the Docker status website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Docker status website.
.EXAMPLE
	PS> ./open-docker-status-website
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://status.docker.com/"
exit 0 # success
