<#
.SYNOPSIS
	Opens the WhatsApp website
.DESCRIPTION
	This PowerShell script launches the Web browser with the WhatsApp website.
.EXAMPLE
	PS> ./open-whats-app-website
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.whatsapp.com/"
exit 0 # success
