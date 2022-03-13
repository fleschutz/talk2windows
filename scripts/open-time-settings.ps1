<#
.SYNOPSIS
	Opens the time & date settings of Windows
.DESCRIPTION
	This PowerShell script launches the time & date settings of Windows.
.EXAMPLE
	PS> ./open-time-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-settings:dateandtime
exit 0 # success
