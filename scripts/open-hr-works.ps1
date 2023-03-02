<#
.SYNOPSIS
	Open the HRworks Web service
.DESCRIPTION
	This PowerShell script launches the Web browser with the HRworks Web service.
.EXAMPLE
	PS> ./open-hr-works
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz / License: CC0
#>

& "$PSScriptRoot/open-browser.ps1" "https://login.hrworks.de/"
exit 0 # success
