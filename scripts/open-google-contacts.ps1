<#
.SYNOPSIS
	Opens Google Contacts
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Contacts.
.EXAMPLE
	PS> ./open-google-contacts
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Contacts..."
& "$PSScriptRoot/open-browser.ps1" "https://contacts.google.com"
exit 0 # success
