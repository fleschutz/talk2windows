<#
.SYNOPSIS
	Opens Google Mail
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Mail.
.EXAMPLE
	PS> ./open-google-mail
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Mail..."
& "$PSScriptRoot/open-browser.ps1" "https://mail.google.com"
exit 0 # success
