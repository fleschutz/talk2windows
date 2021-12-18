<#
.SYNOPSIS
	Launches the XING app
.DESCRIPTION
	This PowerShell script launches the XING application.
.EXAMPLE
	PS> ./open-xing
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process xing:
exit 0 # success
