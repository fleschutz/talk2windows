<#
.SYNOPSIS
	Launches Windows Defender
.DESCRIPTION
	This script launches the Windows Defender application.
.EXAMPLE
	PS> ./open-windows-defender
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process windowsdefender:
exit 0 # success
