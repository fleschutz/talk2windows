<#
.SYNOPSIS
	Opens Google Mail
.DESCRIPTION
	This PowerShell script launches the Web browser with the Google Mail website.
.EXAMPLE
	PS> ./open-google-mail
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://mail.google.com"
exit 0 # success
