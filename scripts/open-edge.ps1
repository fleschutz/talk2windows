<#
.SYNOPSIS
	Launches the Edge browser
.DESCRIPTION
	This PowerShell script launches the Microsoft Edge Web browser.
.EXAMPLE
	PS> ./open-edge
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process microsoft-edge://
exit 0 # success
