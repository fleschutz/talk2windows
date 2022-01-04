<#
.SYNOPSIS
	Starts the default email client
.DESCRIPTION
	This PowerShell script launches the default email client.
.EXAMPLE
	PS> ./open-email-client
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

start-process "mailto:markus@fleschutz.de"
exit 0 # success
